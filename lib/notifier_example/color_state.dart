import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_for_solid_software/constant_values/constant_value.dart';

///[ColorState] class is used to control color state. This is the place where
///colors are randomly generated.
class ColorState extends ChangeNotifier {
  ///Initial color is white. [_color] is privet because I want this value to be
  ///changed only here and only via [changeColor] method;
  Color _color = Colors.white;

  ///[_random] instance of the [Random] from the dart:math library is used for
  ///the random color generation.
  final _random = Random();

  ///Color getter
  Color get color => _color;

  ///Here I randomly generate colors and then call the [notifyListeners] to
  ///trigger the rebuilding widget that depends on this value.
  void changeColor() {
    _color = Color.fromRGBO(
      _random.nextInt(rgbMax),
      _random.nextInt(rgbMax),
      _random.nextInt(rgbMax),
      opacity,
    );
    notifyListeners();
  }
}
