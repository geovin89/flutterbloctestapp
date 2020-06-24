import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final String name;

  const RegisterScreen({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Text('Register $name!')),
        ],
      ),
    );
  }
}
