
import 'package:flutter/material.dart';

import 'all_widgetrs_store/column_file.dart';
import 'all_widgetrs_store/list_view.dart';
import 'all_widgetrs_store/rich_text_custome.dart';
import 'all_widgetrs_store/row_file.dart';
import 'all_widgetrs_store/scrollable_widget.dart';
import 'all_widgetrs_store/search_box_custom.dart';
import 'all_widgetrs_store/stack_widget.dart';


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
      home:   MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  final List<String> dummyItems = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape'
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('all widgets',
        style: TextStyle(
            color: Colors.white,
            fontSize: 30, fontWeight: FontWeight.w900),
      ),backgroundColor: Colors.pink,),

      // body: const Padding(
      //   padding: EdgeInsets.all(8.0),
      //   child: SizedBox(
      //     width: 500,
      //      child: CustomSearchWidget()
      //   ),
      // )
      body:
      Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              // All WIDGET ADDED HERE
              child: CustomListViewWidget(
                items: dummyItems, // Passing the list of items
                scrollDirection: Axis.vertical, // Scrolling direction
                reverse: false, // Do not reverse the order
                padding: const EdgeInsets.symmetric(vertical: 10), // Custom padding
                primary: true, // Set as the primary scroll view
                physics: const ClampingScrollPhysics(), // Scroll physics
                shrinkWrap: true, // Wrap the ListView to its contents
                itemExtent: 80.0, // Fixed height for each item
                separator: const Divider(), // Adding a divider between items
              ),
              )
              //CustomStackWidget()
              // CustomSearchWidget(),
             // CustomRichText(),
             // ProfileWidget()
              //CustomRowWidget(),
              //  ScrollableWidget()
            ),
        ],
      ),
    );
  }
}



