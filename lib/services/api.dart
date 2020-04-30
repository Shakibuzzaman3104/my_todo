import 'package:mynotes/local_database/sqf_database.dart';
import 'package:mynotes/models/model_notes.dart';
import 'package:mynotes/utils/table_constants.dart';
import 'package:sqflite/sqflite.dart';

class Api {
  DBHelper dbHelper;

  Api({this.dbHelper});

  Future<int> addNote(ModelNotes modelNotes) async {
    Database dbClient = await dbHelper.db;
    return await dbClient.insert(
      TableNamesConstants.NOTES,
      modelNotes.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  Future<List<ModelNotes>> getNotes() async {
    Database dbClient = await dbHelper.db;
    final List<Map<String, dynamic>> maps = await dbClient.query(TableNamesConstants.NOTES);
    return List.generate(maps.length, (i) {
      return ModelNotes(
        id: maps[i]['id'],
        dateTime: maps[i]['datetime'],
        title: maps[i]['tilte'],
        reminder: maps[i]['reminder'],
        reminderDatetime: maps[i]['reminder_datetime'],
      );
    });
  }
}
