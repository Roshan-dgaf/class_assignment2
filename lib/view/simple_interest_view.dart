import 'package:class_assignment2/cubit/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestView extends StatelessWidget {
  const SimpleInterestView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController principalController = TextEditingController();
    final TextEditingController rateController = TextEditingController();
    final TextEditingController timeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Roshan Baidar Simple Interest Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: principalController,
              decoration: const InputDecoration(
                labelText: 'Principal',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: rateController,
              decoration: const InputDecoration(
                labelText: 'Rate of Interest (%)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: timeController,
              decoration: const InputDecoration(
                labelText: 'Time (years)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                final double principal =
                    double.tryParse(principalController.text) ?? 0;
                final double rate = double.tryParse(rateController.text) ?? 0;
                final double time = double.tryParse(timeController.text) ?? 0;

                context
                    .read<SimpleInterestCubit>()
                    .calculateSimpleInterest(principal, rate, time);
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            BlocBuilder<SimpleInterestCubit, SimpleInterestState>(
              builder: (context, state) {
                if (state.result != null) {
                  return Text(
                    'Simple Interest: ${state.result!.toStringAsFixed(2)}',
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
