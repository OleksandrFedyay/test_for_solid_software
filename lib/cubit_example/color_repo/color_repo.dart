import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_for_solid_software/constant_values/constant_value.dart';

///Color repository.
class ColorRepo {
  ///[_random] instance of the [Random] from the dart:math library is used for
  ///the random color generation.
  final _random = Random();

  ///[generateColor] randomly generates colors
  Color generateColor() {
    final color = Color.fromRGBO(
      _random.nextInt(rgbMax),
      _random.nextInt(rgbMax),
      _random.nextInt(rgbMax),
      opacity,
    );

    return color;
  }
}
