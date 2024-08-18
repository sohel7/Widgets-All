import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Center alignment for all children
      clipBehavior: Clip.none, // Determines whether children can be clipped
      children: [
        // First child (base)
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
        // Second child (overlaid on top of the first)
        Positioned(
          top: 20,
          left: 20,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
        // Third child (overlaid with an offset)
        Positioned(
          bottom: -95,
          right: -95,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
        // Fourth child (centered, using alignment of the stack)
        Container(
          width: 50,
          height: 50,
          color: Colors.yellow,
        ),
        // fifth child (centered, using alignment of the stack)
        Container(
          width: 30,
          height: 30,
          color: Colors.pink,
        )
      ],
    );
  }
}
