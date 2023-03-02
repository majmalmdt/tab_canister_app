import 'database_helper.dart';

  final dbHelper = DatabaseHelper.instance;
void insert(nameController,countController,tempController,holder) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName : nameController.text,
      DatabaseHelper.columnCount : countController.text,
      DatabaseHelper.columnDosage1 : holder[0],
      DatabaseHelper.columnDosage2 : holder[1],
      DatabaseHelper.columnDosage3 : holder[2],
      DatabaseHelper.columnDosage4 : holder[3],
      DatabaseHelper.columnTemp : tempController.text,
    };
    final id = await dbHelper.insert(row);
  }

  // void _query() async {
  //   final allRows = await dbHelper.queryAllRows();
  //   print('query all rows:');
  //   allRows.forEach(print);
  // }

  

  
