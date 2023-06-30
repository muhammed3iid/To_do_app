import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Make device notifications bar transparent
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To do app',
      home: Home(),
    );
  }
}
