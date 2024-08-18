import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Row(
          children: [
            // Search Box with Icon
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
            SizedBox(width: 10),
            // Right-side Icons
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Add functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Add functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}
