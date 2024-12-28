import 'package:class_assignment2/cubit/area_of_square_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfSquareView extends StatelessWidget {
  const AreaOfSquareView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController sideController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Roshan Baidar Area of Square Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: sideController,
              decoration: const InputDecoration(
                labelText: 'Side Length',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                final double side = double.tryParse(sideController.text) ?? 0;

                context.read<AreaOfSquareCubit>().calculateArea(side);
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            BlocBuilder<AreaOfSquareCubit, AreaOfSquareState>(
              builder: (context, state) {
                if (state.result != null) {
                  return Text(
                    'Area of Square: ${state.result!.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
