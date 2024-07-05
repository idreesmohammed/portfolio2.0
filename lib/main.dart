import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:idreesportfolio/loading_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBeIzUWOBMXspvXqPOnl49bX1j0ajYz5PA",
          appId: "1:655566496710:web:7abb47b7e1ac83ceb388c7",
          messagingSenderId: "655566496710",
          projectId: "technical-portfolio"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
