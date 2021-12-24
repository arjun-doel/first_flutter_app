import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  static const List<String> names = <String>[
    'Manish',
    'Jitender',
    'Pankaj',
    'Arjun',
    'Nighat',
    'Mohit',
    'Ruchika',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            margin: const EdgeInsets.all(5),
            color: Colors.green,
            child: Center(
                child: Text(
              names[index],
              style: const TextStyle(fontSize: 22, color: Colors.white),
            )),
          );
        });
  }
}
