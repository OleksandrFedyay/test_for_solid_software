import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_for_solid_software/constant_values/constant_value.dart';

/// This example shows how to change background color using setState.
/// The setState is useful for ephemeral state management.

class SetStateExample extends StatefulWidget {
  ///Constructor
  const SetStateExample({super.key});

  @override
  State<SetStateExample> createState() => _SetStateExampleState();
}

class _SetStateExampleState extends State<SetStateExample> {
  Color color = Colors.white; // Initial background color.
  final _random = Random(); // Used for random color generation.

  ///This method is used for random color generation and changing value of the
  ///[color] variable via [setState].
  void changeBackgroundColor() => setState(
        () {
          color = Color.fromRGBO(
            _random.nextInt(rgbMax),
            _random.nextInt(rgbMax),
            _random.nextInt(rgbMax),
            opacity,
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeBackgroundColor,
      child: Scaffold(
        backgroundColor: color,
        body: const Center(
          child: Text(
            greeting,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
