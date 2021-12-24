import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<String> names = <String>[
    'Manish',
    'Jitender',
    'Pankaj',
    'Aarti',
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
            margin: EdgeInsets.all(2),
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
