import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'info.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      routes: {
        '/info':(context) => const BMIInfo(),
      },
      // TODO: Remove this before publication
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
