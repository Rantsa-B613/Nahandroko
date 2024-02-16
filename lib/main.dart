import 'package:flutter/material.dart';

import 'package:nahandroko/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nahandroko',
      theme: ThemeData(
        primaryColor:
            Colors.yellow, // Vous pouvez définir votre propre couleur ici
      ),
      home: HomeScreen(),
    );
  }
}

