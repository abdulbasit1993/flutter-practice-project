import 'package:flutter/material.dart';

class FontsExample extends StatelessWidget {
  const FontsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Fonts Demo")),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'This is a sample text',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This is a sample text with Custom Font',
              style: TextStyle(fontSize: 18, fontFamily: 'Tilt-Prism'),
            ),
          ],
        ),
      )),
    );
  }
}
