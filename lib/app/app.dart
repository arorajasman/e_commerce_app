import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // const MyApp({super.key}); // default constructor

  // creating a private named constructor
  // ignore: prefer_const_constructors_in_immutables
  MyApp._internal();

  // creating a singleton instance of the named constructor
  static final MyApp instance = MyApp._internal();

  // creating a factory instance for the MyApp class
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
