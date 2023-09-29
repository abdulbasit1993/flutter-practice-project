import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MediaQuery Example")),
      body: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.5,
      ),
    );
  }
}
