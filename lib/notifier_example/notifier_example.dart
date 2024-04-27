import 'package:flutter/material.dart';
import 'package:test_for_solid_software/constant_values/constant_value.dart';
import 'package:test_for_solid_software/notifier_example/inherited_color.dart';

///This is Notifier example
class NotifierExample extends StatelessWidget {
  ///Constructor
  const NotifierExample({super.key});

  @override
  Widget build(BuildContext context) {
    final state = InheritedColor.of(context).colorState;

    return ListenableBuilder(
      listenable: state,
      builder: (_, child) {
        return MaterialApp(
          home: GestureDetector(
            onTap: state.changeColor,
            child: Scaffold(
              backgroundColor: state.color,
              body: child,
            ),
          ),
        );
      },
      child: const Center(
        child: Text(
          greeting,
          style: textStyle,
        ),
      ),
    );
  }
}
