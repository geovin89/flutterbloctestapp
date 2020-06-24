import 'package:flutter/material.dart';
import 'package:flutterbloctestapp/core/constants/constants.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback _onPressed;

  const SignInButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: Key(UIKeys.kSignInButtonKey),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      onPressed: _onPressed,
      child: const Text('Sign in'),
    );
  }
}
