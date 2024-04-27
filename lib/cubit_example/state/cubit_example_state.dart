part of 'cubit_example_cubit.dart';

///State classes for the Cubit
sealed class CubitExampleState extends Equatable {
  const CubitExampleState();
}

///Initial state class
class CubitExampleInitial extends CubitExampleState {
  ///Initial color
  final Color initialColor;

  @override
  List<Object?> get props => [initialColor];

  ///Constructor
  const CubitExampleInitial({required this.initialColor});
}

///State class with data which is successfully fetched from the [ColorRepo].
class CubitExampleData extends CubitExampleState {
  ///[colorData] holds the successfully generated color data
  final Color colorData;

  @override
  List<Object?> get props => [colorData];

  ///Constructor
  const CubitExampleData({required this.colorData});
}

///State class that holds error object which can occur during fetching data
/// from [ColorRepo]
class CubitExampleError extends CubitExampleState {
  ///Error
  final Object error;

  @override
  List<Object?> get props => [];

  ///Constructor
  const CubitExampleError({required this.error});
}
