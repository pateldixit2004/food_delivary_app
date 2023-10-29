import 'package:flutter/material.dart';
import 'package:food_delivary_app/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreebCounter extends StatefulWidget {
  const HomeScreebCounter({super.key});

  @override
  State<HomeScreebCounter> createState() => _HomeScreebCounterState();
}

class _HomeScreebCounterState extends State<HomeScreebCounter> {
  CounterProvider? providerF;
  CounterProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = context.read<CounterProvider>();
    providerT = context.watch<CounterProvider>();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("${providerT!.i}"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            providerF!.increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
