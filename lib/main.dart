import 'package:flutter/material.dart';
import 'package:my_amazon_app/constants/global_var.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Amazon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: GlobalVar.backgroundColor),
        appBarTheme: const AppBarTheme(elevation: 0),
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Amazon App'),
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: GlobalVar.appBarColor),
          ),
        ),
        body: Center(child: Text("This is my Amazon App")),
      ),
    );
  }
}
