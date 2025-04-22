import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Retrieve Text Input', home: MyCustomForm());
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Retrieve Text Input')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(controller: myController),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(controller: myController1),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(controller: myController2),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          final snackBar = SnackBar(
            content: Column(
              children: [
                Text(myController.text),
                Text(myController1.text),
                Text(myController2.text),
              ],
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar); // showDialog(
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}

