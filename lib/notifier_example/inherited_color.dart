import 'package:flutter/material.dart';
import 'package:test_for_solid_software/notifier_example/color_state.dart';

///Inherited widget injects information into the widget tree and makes it
///available for the entire subtree.
class InheritedColor extends InheritedWidget {
  ///[ColorState] instance used for
  final ColorState colorState;

  ///Constructor
  const InheritedColor({
    required super.child,
    required this.colorState,
    super.key,
  });

  // ignore: avoid_returning_widgets
  ///The [of] method is used to provide possibility for all children widgets
  ///(below [InheritedWidget]) to get the reference to the data. Providing this
  ///method is conventional.
  static InheritedColor of(BuildContext context) {
    final iw = context.dependOnInheritedWidgetOfExactType<InheritedColor>();
    assert(iw != null, "No 'InheritedColor' found above in the tree.");

    // ignore: avoid_non_null_assertion
    return iw!;
  }

  @override
  bool updateShouldNotify(covariant InheritedColor oldWidget) {
    return colorState != oldWidget.colorState;
  }
}
