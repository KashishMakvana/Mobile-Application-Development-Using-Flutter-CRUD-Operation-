import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabase {
  // INITDATABASE Function :::

  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'MyFirstDataBase.db');
    return await openDatabase(databasePath);
  }

// COPYTOROOT Function

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "MyFirstDataBase.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'MyFirstDataBase.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future<List<Map<String, Object?>>> getDataFromStudent() async {
    Database db = await initDatabase();
    var data = await db.rawQuery("select * from Student");
    return data;
  }

  Future<int> deleteStudent(int id) async {
    Database db = await initDatabase();
    var data = db.delete("Student", where: "StuID=?", whereArgs: [id]);
    return data;
  }

  Future<int> insertStudent({StuName, CPI}) async {
    Database db = await initDatabase();
    Map<String, Object?> map = {};
    map['StuName'] = StuName;
    map['CPI'] = CPI;
    var data = db.insert("Student", map);
    return data;
  }

  Future<int> updateStudent({StuName, CPI, StuID}) async {
    Database db = await initDatabase();
    Map<String, Object?> map = {};
    map['StuName'] = StuName;
    map['CPI'] = CPI;
    var data = db.update("Student", map, where: "StuID=?", whereArgs: [StuID]);
    return data;
  }
}