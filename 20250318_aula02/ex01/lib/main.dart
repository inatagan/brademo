import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Flutter is FUN!!"),
        ),
        body: Container(
          margin: const EdgeInsets.all(90.0),
          color: Colors.red[600],
          width: 98.0,
          height: 98.0,
          child: Text("HI MOM 11"),
        ),
      ),
    );
  }
}
