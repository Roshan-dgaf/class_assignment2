import 'package:class_assignment2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment2/cubit/area_of_square_cubit.dart';
import 'package:class_assignment2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment2/view/area_of_circle.dart';
import 'package:class_assignment2/view/area_of_square_view.dart';
import 'package:class_assignment2/view/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this.simpleInterestCubit,
    this.areaOfCircleCubit,
    this.areaOfSquareCubit,
  ) : super(null);

  final SimpleInterestCubit simpleInterestCubit;
  final AreaOfCircleCubit areaOfCircleCubit;
  final AreaOfSquareCubit areaOfSquareCubit;

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: simpleInterestCubit,
          child: const SimpleInterestView(),
        ),
      ),
    );
  }

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: areaOfCircleCubit,
          child: const AreaOfCircleView(),
        ),
      ),
    );
  }

  void openAreaOfSquareView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: areaOfSquareCubit,
          child: const AreaOfSquareView(),
        ),
      ),
    );
  }
}
