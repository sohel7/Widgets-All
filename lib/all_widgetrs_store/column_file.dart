import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Welcome Text
        const Text(
          'Welcome',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16), // Spacing between elements

        // Profile Picture
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            'https://via.placeholder.com/150', // Replace with your image URL or use AssetImage for local images
          ),
        ),
        const SizedBox(height: 16), // Spacing between elements

        // Email Address
        const Text(
          'example@email.com', // Replace with the actual email address
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

