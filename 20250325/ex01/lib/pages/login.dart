import 'package:app_login/pages/home_page.dart';
import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});
//
//   @override
//   FormLogin createState() {
//     // TODO: implement createState
//     return FormLogin();
//   }
// }

class Login extends StatelessWidget {
  // final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(title: Center(child: Text('Login to continue..'))),
      // key: _formkey,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(12.0)),

          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Insira a sua senha!',
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          //ADD Botoa aqui
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
