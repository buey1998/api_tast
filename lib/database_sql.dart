import 'dart:ffi';

import 'package:flutter_application_test/Model/task.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseSQL {
  Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), 'todoList.db'),
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          "CREATE TABLE task(id INTEGER PRIMARY KEY, title TEXT, description INTEGER)",
        );
      },
      version: 1
    );
  }

  Future<int> insertTask(Task task) async {
    int taskId = 0;
    Database _db = await database();
    await _db
        .insert('tasks', task.toMap(),
            conflictAlgorithm: ConflictAlgorithm.replace)
        .then((value) {
      taskId = value;
    });
    return taskId;
  }
  
}
