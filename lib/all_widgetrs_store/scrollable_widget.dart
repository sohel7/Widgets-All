import 'package:flutter/material.dart';

class ScrollableWidget extends StatelessWidget {
  const ScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // List of colors to be used for the containers
    final List<Color> containerColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.yellow,
      Colors.cyan,
      Colors.black
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          // Demo data for scrolling
          for (int i = 1; i <= 20; i++) // Generate 20 items
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: containerColors[i % containerColors.length], // Multiple colors
                 // color: Colors.grey, // Background color
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  'Item $i',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
