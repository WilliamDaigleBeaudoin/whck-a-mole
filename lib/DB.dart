import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:core';
import 'package:flutter/foundation.dart';

late List<Map> list;

class HighScorer {
  void CreateDB() async {
// Open the database and store the reference.
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'highscore.db');

// open the database
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE score (id INTEGER PRIMARY KEY, datetime TEXT, nom TEXT, score INTEGER)');
    });
  }

  void InsertDB() async {
// Open the database and store the reference.
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'highscore.db');

// open the database
    Database database = await openDatabase(path, version: 1);
    // Insert some records in a transaction
    await database.transaction((txn) async {
      for (var i = 100; i > 0; i--) {
        await txn.rawInsert(
            'INSERT INTO score(datetime, nom, score) VALUES(CURRENT_TIMESTAMP, "PLAYER 1", $i)');
      }
    });
  }

  void SelectDB() async {
// Open the database and store the reference.
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'highscore.db');

// open the database
    Database database = await openDatabase(path, version: 1);
// Get the records
    list = await database.rawQuery('SELECT * FROM score');
  }

  List<Map> GetList() {
    return list;
  }

  void InsertDBStuff(String dateTime, String nom, int score) async {
    // Open the database and store the reference.
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'highscore.db');
// open the database
    Database database = await openDatabase(path, version: 1);
    // Insert some records in a transaction
    await database.transaction((txn) async {
      await txn.rawInsert(
          'INSERT INTO score(datetime, nom, score) VALUES("$dateTime", "$nom", $score)');
    });
  }

  void DropDB() async {
    // Open the database and store the reference.
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'highscore.db');
// open the database
    Database database = await openDatabase(path, version: 1);
    // Insert some records in a transaction
    await database.transaction((txn) async {
      await txn.rawDelete('DELETE FROM score');
    });
  }

  void UpdateDB(int id, String dateTime, String nom, int score) async {
    // Open the database and store the reference.
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'highscore.db');
// open the database
    Database database = await openDatabase(path, version: 1);
    // Insert some records in a transaction
    await database.transaction((txn) async {
      await txn.rawUpdate(
          'UPDATE score SET datetime = "$dateTime", nom ="$nom", score = $score WHERE id = $id');
    });
  }
}
