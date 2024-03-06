import 'package:flutter/material.dart';
import 'package:flutter_application_3/calculate_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Button',
      debugShowCheckedModeBanner: false,
      home: calculator(),
    );
  }
}


  
