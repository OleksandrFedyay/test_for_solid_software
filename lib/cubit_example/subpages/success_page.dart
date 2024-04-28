import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_solid_software/constant_values/constant_value.dart';
import 'package:test_for_solid_software/cubit_example/state/cubit_example_cubit.dart';
import 'package:test_for_solid_software/cubit_example/typedefs/typedefs.dart';

///SuccessPage is subpage for the CubitExample page which holds
///the successfully generated color.
class SuccessPage extends StatelessWidget {
  ///Color
  final Color color;

  ///Callback
  final VoidCallback colorChangeCallback;

  ///Constructor
  const SuccessPage({
    required this.color,
    required this.colorChangeCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: colorChangeCallback,
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
