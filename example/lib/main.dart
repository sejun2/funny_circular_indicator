import 'package:flutter/material.dart';
import 'package:funny_circular_indicator/funny_circular_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Funny Circular Indicator'),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            child: const FunnyCircularIndicator(),
          ),
        ),
      ),
    );
  }
}
