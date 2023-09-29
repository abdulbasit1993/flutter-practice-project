import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Example")),
      body: SafeArea(
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Container(color: Colors.red);
              })),
    );
  }
}
