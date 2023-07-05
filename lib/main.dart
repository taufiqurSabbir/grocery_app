import 'package:e_commearce/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frishly',
      theme: ThemeData(
          scaffoldBackgroundColor: '#F8FAFF'.toColor(),
          brightness: Brightness.light,
          primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
