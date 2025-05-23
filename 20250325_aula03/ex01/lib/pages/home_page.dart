import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // late final User user;
  late final String email;

  HomePage({required String email}) {
    this.email = email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        children: [
          Text(email),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back!"),
            ),
          ),
        ],
      ),
    );
  }
}
