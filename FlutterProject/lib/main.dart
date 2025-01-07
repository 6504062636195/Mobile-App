import 'package:flutter/material.dart';
import 'package:newflutterproject/about_page.dart';
import 'package:newflutterproject/welcome_page.dart';
import 'package:newflutterproject/welcomepage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.yellowAccent),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: const WelcomePage2(),
    );
  }
}
