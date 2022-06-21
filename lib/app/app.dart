import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const _instance = MyApp._internal(); // singleton , or single class instance

  factory MyApp () => _instance; // factory

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TestOne extends StatelessWidget {
  const TestOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  updateAppState () {}
}

