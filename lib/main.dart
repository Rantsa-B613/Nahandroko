import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
            Colors.blue, // Vous pouvez définir votre propre couleur ici
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String message = '';

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://votre_ip:port/api/data'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        message = data['message'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Votre Application'),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
