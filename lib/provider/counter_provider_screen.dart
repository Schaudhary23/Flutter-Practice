import 'package:flutter/material.dart';
import 'package:flutter_training/provider/counter_text_widget.dart';
import 'package:provider/provider.dart';
import 'counter_provider_mixin.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management Using Counter'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('You have clicked'),
            SizedBox(height: 10),
            CounterText(),
            SizedBox(
              height: 10,
            ),
            Text('Times'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.read<Counter>().increment(),
      ),
    );
  }
}
