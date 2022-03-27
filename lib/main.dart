import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(HelloBooksApp());
}

// create only one time and it cannot be interactive with user
// ignore: use_key_in_widget_constructors
class HelloBooksApp extends StatelessWidget {
  // const HelloBooksApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Hello books'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> greetings = [
    'Hello Books',
    'Hola Libros',
    'Ciao Libri',
    'Bonjoour'
  ];
  int index = 0;
  late String current;
  void _updateGreeting() {
    setState(() {
      current = greetings[index];

      index = index == (greetings.length - 1) ? 0 : index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: "Hello",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Books"),
        ),
        body: Center(
          child: Text(
            greetings[index],
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _updateGreeting,
          tooltip: 'Greating',
          child: Icon(Icons.insert_emoticon),
        ),
      ),
    );
  }
}
