import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_solid_software/constant_values/constant_value.dart';
import 'package:test_for_solid_software/cubit_example/state/cubit_example_cubit.dart';
import 'package:test_for_solid_software/cubit_example/typedefs/typedefs.dart';

///Initial subpage for the CubitExample page
class InitialPage extends StatelessWidget {
  ///Initial background color
  final Color initialColor;

  ///Callback
  final ColorChangeCallback colorChangeCallback;

  ///Constructor
  const InitialPage({
    required this.initialColor,
    required this.colorChangeCallback,
    super.key,
  });

  ///[changeBackgroundColor] calls the generateColor() from the Cubit class
  ///which, in its turn, calls the method from ColorRepo to randomly
  ///generate color
  void changeBackgroundColor(BuildContext context) {
    BlocProvider.of<CubitExampleCubit>(context).generateColor();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => changeBackgroundColor(context),
      child: Scaffold(
        backgroundColor: initialColor,
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
