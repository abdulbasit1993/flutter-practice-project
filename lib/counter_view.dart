import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  TextEditingController friendListController = TextEditingController();
  TextEditingController updateItemController = TextEditingController();

  List friendList = ['Bilal', 'Taber', 'Owais', 'Ali'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: friendListController,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  friendList.add(friendListController.text);
                  friendListController.clear();
                });
              },
              child: Text('Add Item'))
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: friendList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: ListTile(
                    tileColor: Colors.grey,
                    title: Text(friendList[index]),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                updateItemController.text = friendList[index];
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Update Value'),
                                        content: TextField(
                                          controller: updateItemController,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  friendList[index] =
                                                      updateItemController.text;
                                                });
                                                updateItemController.clear();
                                                Navigator.pop(context);
                                              },
                                              child: Text("Update"))
                                        ],
                                      );
                                    });
                              },
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  friendList.removeAt(index);
                                });
                              },
                              icon: const Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
