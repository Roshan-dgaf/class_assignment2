import 'package:class_assignment2/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardCubit = context.read<DashboardCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Roshan Baidar Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          children: [
            Card(
              child: InkWell(
                onTap: () => dashboardCubit.openSimpleInterestView(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.attach_money, size: 48),
                    SizedBox(height: 8),
                    Text('Simple Interest'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () => dashboardCubit.openAreaOfCircleView(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.circle, size: 48),
                    SizedBox(height: 8),
                    Text('Area of Circle'),
                  ],
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () => dashboardCubit.openAreaOfSquareView(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.square_foot, size: 48),
                    SizedBox(height: 8),
                    Text('Area of Square'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
