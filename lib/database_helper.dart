import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static const _databaseName = "tabcanister.db";
  static const _databaseVersion = 1;
  static const table = 'medicine';
  static const columnId = '_id';
  static const columnName = 'name';
  static const columnCount = 'count';
  static const columnDosage1 = 'dosage1';
  static const columnDosage2 = 'dosage2';
  static const columnDosage3 = 'dosage3';
  static const columnDosage4 = 'dosage4';
  static const columnTemp = 'temp';


  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database?> get database async {
    _database ??= await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL,
            $columnCount INTEGER NOT NULL,
            $columnDosage1 INTEGER NOT NULL,
            $columnDosage2 INTEGER NOT NULL,
            $columnDosage3 INTEGER NOT NULL,
            $columnDosage4 INTEGER NOT NULL,
            $columnTemp DOUBLE NOT NULL
          )
          ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(table, row);
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  Future<int?> queryRowCount() async {
    Database? db = await instance.database;
    return Sqflite.firstIntValue(
        await db!.rawQuery('SELECT COUNT(*) FROM $table'));
  }
}
