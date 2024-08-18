
import 'package:flutter/material.dart';

import 'all_widgetrs_store/column_file.dart';
import 'all_widgetrs_store/row_file.dart';
import 'all_widgetrs_store/scrollable_widget.dart';


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
      ),
      home:  const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('all widgets',
        style: TextStyle(
            color: Colors.white,
            fontSize: 30, fontWeight: FontWeight.w900),
      ),backgroundColor: Colors.pink,),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          // All WIDGET ADDED HERE
          child: ProfileWidget()
          //CustomRowWidget(),
         //   ScrollableWidget()
        ),
      ),
    );
  }
}



