import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // First Row with Text Widgets
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Row1'),
            Text('Row2'),
            Text('Row3'),
          ],
        ),
        SizedBox(height: 16), // Space between the rows

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('WE LOVE BANGLADESH', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.pink),)
          ],
        ),


        SizedBox(height: 16), // Space between the rows

        // Second Row with Image Boxes
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First Image Box
            SizedBox(
              width: 80,
              height: 80,
              child: Image(
                image: NetworkImage('https://via.placeholder.com/50'),
                fit: BoxFit.cover,
              ),
            ),
            // Second Image Box
            SizedBox(
              width: 50,
              height: 50,
              child: Image(
                image: NetworkImage('https://via.placeholder.com/50'),
                fit: BoxFit.cover,
              ),
            ),
            // Third Image Box
            SizedBox(
              width: 50,
              height: 50,
              child: Image(
                image: NetworkImage('https://via.placeholder.com/50'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
