import 'package:flutter/material.dart';

///To avoid crashing of the whole app, we have to handle the exceptions. We can
///show the error page to the user with optional activity. For example: to try
///again or to go back and try later.

class ErrorPage extends StatelessWidget {
  ///Error
  final Object error;

  ///Constructor
  const ErrorPage({required this.error, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          error.toString(),
        ),
      ),
    );
  }
}
