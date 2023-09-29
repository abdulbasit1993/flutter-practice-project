import 'package:flutter/material.dart';

class ImagesView extends StatefulWidget {
  const ImagesView({super.key});

  @override
  State<ImagesView> createState() => _ImagesViewState();
}

class _ImagesViewState extends State<ImagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images Demo")),
      body: SafeArea(
          child: Column(
        children: [
          // Image.network(
          //   "https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
          //   width: 290,
          // )
          Image.asset('assets/images/car.jpg')
        ],
      )),
    );
  }
}
