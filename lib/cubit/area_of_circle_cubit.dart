import 'package:bloc/bloc.dart';

class AreaOfCircleState {
  final double? result;

  AreaOfCircleState({this.result});

  AreaOfCircleState copyWith({double? result}) {
    return AreaOfCircleState(
      result: result ?? this.result,
    );
  }
}

class AreaOfCircleCubit extends Cubit<AreaOfCircleState> {
  AreaOfCircleCubit() : super(AreaOfCircleState());

  void calculateArea(double radius) {
    final area = 3.14159 * radius * radius;
    emit(state.copyWith(result: area));
  }
}
