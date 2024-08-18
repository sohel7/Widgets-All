import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Welcome to ',
            style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'our site',
            style: TextStyle(color: Colors.red, fontSize: 20, fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: '\nHere is some demo data: ',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          TextSpan(
            text: 'This is a sample description for the site.',
            style: TextStyle(color: Colors.green, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
