import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'IntroPage.dart';
import 'EventsPage.dart';
import 'AddEventPage.dart';
import 'AddTeamMemberPage.dart'; // Import AddTeamMemberPage

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CS CUBE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => IntroPage(),
        '/events': (context) => EventsPage(),
        '/addEvent': (context) => AddEventPage(),
        '/addTeamMember': (context) => AddTeamMemberPage(), // Add route for AddTeamMemberPage
      },
    );
  }
}
