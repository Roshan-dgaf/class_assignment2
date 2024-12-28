import 'package:bloc/bloc.dart';

class AreaOfSquareState {
  final double? result;

  AreaOfSquareState({this.result});

  AreaOfSquareState copyWith({double? result}) {
    return AreaOfSquareState(
      result: result ?? this.result,
    );
  }
}

class AreaOfSquareCubit extends Cubit<AreaOfSquareState> {
  AreaOfSquareCubit() : super(AreaOfSquareState());

  void calculateArea(double side) {
    final area = side * side;
    emit(state.copyWith(result: area));
  }
}
