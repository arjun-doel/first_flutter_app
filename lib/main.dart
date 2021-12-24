import 'package:flutter/material.dart';
import 'list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _title = 'My First Flutter App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: const <Widget>[
          Expanded(child: MyListView()),
          MyCustomForm(),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('First App Bar as widget'),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'sathyabaman@gmail.com',
      style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
      decoration: new InputDecoration(
          hintText: "Enter Something",
          contentPadding: const EdgeInsets.all(80.0)),
    );
  }
}
