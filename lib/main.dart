import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
           ),
        home: NavBar());
  }
}
