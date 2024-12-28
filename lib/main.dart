import 'package:class_assignment2/cubit/area_of_square_cubit.dart';
import 'package:class_assignment2/cubit/dashboard_cubit.dart';
import 'package:class_assignment2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment2/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/area_of_circle_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DashboardCubit(
            SimpleInterestCubit(),
            AreaOfCircleCubit(),
            AreaOfSquareCubit(),
          ),
        ),
        BlocProvider(create: (_) => SimpleInterestCubit()),
        BlocProvider(create: (_) => AreaOfCircleCubit()),
        BlocProvider(create: (_) => AreaOfSquareCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cubit Project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DashboardView(),
      ),
    );
  }
}
