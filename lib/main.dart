///Unused packages are highlighted by the lint but the will be used by you will
///trying different examples

import 'package:flutter/material.dart';
import 'package:test_for_solid_software/cubit_example/cubit_example.dart';
import 'package:test_for_solid_software/notifier_example/color_state.dart';
import 'package:test_for_solid_software/notifier_example/inherited_color.dart';
import 'package:test_for_solid_software/notifier_example/notifier_example.dart';

import 'package:test_for_solid_software/set_state_example/set_state_example.dart';

///To run examples: comment the active example and uncomment the example
///you want to run.
void main() {
  runApp(
    ///This is example with setState().
    // const SetStateExample(),

    /// This is example with Cubit.
    CubitExample(),

    /// This is example with the InheritedWidget and ChangeNotifier.
    //   InheritedColor(
    //     colorState: ColorState(),
    //     child: const NotifierExample(),
    //   ),
  );
}
