import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_solid_software/cubit_example/color_repo/color_repo.dart';

part 'cubit_example_state.dart';

///Cubit for CubitExample page.
class CubitExampleCubit extends Cubit<CubitExampleState> {
  final ColorRepo _colorRepo;

  ///Constructor
  CubitExampleCubit({required ColorRepo colorRepo})
      : _colorRepo = colorRepo,
        super(const CubitExampleInitial(initialColor: Colors.white));

  ///Method calls the [generateColor] from [ColorRepo] to generate colors.
  ///Try-catch block is added just to show that there we can handle the
  ///exceptions.
  void generateColor() {
    try {
      final colorResult = _colorRepo.generateColor();
      emit(CubitExampleData(colorData: colorResult));
    } catch (e) {
      emit(CubitExampleError(error: e));
    }
  }
}
