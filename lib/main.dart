import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:to_do_app/to_do_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const ToDopage(),
    );
  }

}