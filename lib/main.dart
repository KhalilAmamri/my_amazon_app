import 'package:flutter/material.dart';
import 'package:my_amazon_app/constants/global_var.dart';
import 'package:my_amazon_app/features/auth/screens/auth_screen.dart';
import 'package:my_amazon_app/router.dart';

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
        colorScheme: ColorScheme.light(primary: GlobalVar.secondaryColor),
        scaffoldBackgroundColor: GlobalVar.backgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: GlobalVar.secondaryColor,
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AuthScreen(),
    );
  }
}
