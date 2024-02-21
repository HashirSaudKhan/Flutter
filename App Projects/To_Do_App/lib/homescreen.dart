import 'package:flutter/material.dart';
import 'package:todoapp/todolist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "To_Do_LIST",
      debugShowCheckedModeBanner: false,
      home: MyToDoList(),
    );
  }
}
