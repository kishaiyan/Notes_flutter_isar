import 'package:flutter/material.dart';
import 'package:notes_app/model/note_database.dart';
import 'package:notes_app/pages/notes.dart';
import 'package:notes_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.intialize();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => NoteDatabase()),
      ChangeNotifierProvider(create: (context) => Themeprovider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Notes(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}
