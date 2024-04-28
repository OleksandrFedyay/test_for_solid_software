import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_solid_software/cubit_example/color_repo/color_repo.dart';
import 'package:test_for_solid_software/cubit_example/state/cubit_example_cubit.dart';
import 'package:test_for_solid_software/cubit_example/subpages/error_page.dart';
import 'package:test_for_solid_software/cubit_example/subpages/initial_page.dart';
import 'package:test_for_solid_software/cubit_example/subpages/success_page.dart';

///This is example with the Cubit
class CubitExample extends StatelessWidget {
  ///[Generative constructor of the class ]
  CubitExample({super.key});

  ///Repo where I generate background color.
  final colorRepo = ColorRepo();

  ///[changeBackgroundColor] calls the generateColor() from the Cubit class
  ///which, in its turn, calls the method from ColorRepo to randomly
  ///generate color
  void changeBackgroundColor(BuildContext context) {
    BlocProvider.of<CubitExampleCubit>(context).generateColor();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CubitExampleCubit(colorRepo),
        child: BlocBuilder<CubitExampleCubit, CubitExampleState>(
          builder: (_, state) {
            //Here we use pattern matching, destructing etc.
            switch (state) {
              case CubitExampleInitial(:final initialColor):
                return InitialPage(
                  initialColor: initialColor,
                  colorChangeCallback: changeBackgroundColor,
                );
              case CubitExampleError(:final error):
                return ErrorPage(error: error);
              case CubitExampleData(:final colorData):
                return SuccessPage(
                  color: colorData,
                  colorChangeCallback: changeBackgroundColor,
                );
            }
          },
        ),
      ),
    );
  }
}
