import 'package:bloc/bloc.dart';

class SimpleInterestState {
  final double? result;

  SimpleInterestState({this.result});

  SimpleInterestState copyWith({double? result}) {
    return SimpleInterestState(
      result: result ?? this.result,
    );
  }
}

class SimpleInterestCubit extends Cubit<SimpleInterestState> {
  SimpleInterestCubit() : super(SimpleInterestState());

  void calculateSimpleInterest(double principal, double rate, double time) {
    final interest = (principal * rate * time) / 100;
    emit(state.copyWith(result: interest));
  }
}
