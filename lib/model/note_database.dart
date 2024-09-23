import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:notes_app/model/note.dart';
import 'package:path_provider/path_provider.dart';

class NoteDatabase extends ChangeNotifier {
  static late Isar isar;
  // INTIALIZE
  static Future<void> intialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([NoteSchema], directory: dir.path);
  }

  // List
  final List<Note> currentNotes = [];
  // CREATE
  Future<void> addNote(String textFromUser) async {
    final newNote = Note()..text = textFromUser;
    await isar.writeTxn(() => isar.notes.put(newNote));
    await fetchNotes();
  }

  // READ
  Future<void> fetchNotes() async {
    final fetchedNotes = await isar.notes.where().findAll();
    currentNotes.clear();
    currentNotes.addAll(fetchedNotes);
    notifyListeners();
  }

  // UPDATE
  Future<void> updateNote(int id, String updatedText) async {
    final noteToUpdate = await isar.notes.get(id);
    if (noteToUpdate != null) {
      noteToUpdate.text = updatedText;
      await isar.writeTxn(() => isar.notes.put(noteToUpdate));
      await fetchNotes();
    }
  }

  //DELETE
  Future<void> deleteNote(int id) async {
    await isar.writeTxn(() => isar.notes.delete(id));
    await fetchNotes();
  }
}
