import 'package:first_project/fonts_demo_view.dart';
import 'package:first_project/gridview.dart';
import 'package:first_project/images_view.dart';
import 'package:first_project/media_query_view.dart';
import 'package:first_project/navigation_view.dart';
import 'package:flutter/material.dart';
import 'package:first_project/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      "/": (context) => NavigationExample(),
      "/imagescreen": (context) => ImagesView(),
      "/firstscreen": (context) => CounterView(),
      "/mediaqueryscreen": (context) => MediaQueryExample(),
      "/fontscreen": (context) => FontsExample()
    });
    // home: NavigationExample());
  }
}
