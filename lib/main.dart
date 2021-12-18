import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_loka_indira/OnBoard/onboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_loka_indira/provider/entry_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EntryProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
          theme: ThemeData(
            accentColor: Colors.pinkAccent,
            primaryColor: Colors.lightBlue,
            textTheme: GoogleFonts.patrickHandScTextTheme(),
          )),
    );
  }
}
