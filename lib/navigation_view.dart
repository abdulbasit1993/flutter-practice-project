import 'package:first_project/images_view.dart';
import 'package:flutter/material.dart';

class NavigationExample extends StatelessWidget {
  const NavigationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Navigation Example")),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "/firstscreen")},
                  child: Text('Go to Home Screen'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 40))),
              ElevatedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "/imagescreen")},
                  child: Text('Go to Images Screen'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 40))),
              ElevatedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, "/mediaqueryscreen")},
                  child: Text('Go to MediaQuery Screen'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 40))),
            ],
          ),
        ));
  }
}
