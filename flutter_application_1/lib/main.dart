import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("rasm/1.jpg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      )),
    );
  }
}
