import 'package:bloc_cubit_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Bloc Counter",
                  style: (TextStyle(fontSize: 24)),
                ),
                SizedBox(height: 8.0,),
                Text('$state', style: (TextStyle(fontSize: 24))),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              _counterBloc.add(CounterEvents.increment);
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () {
              _counterBloc.add(CounterEvents.decrement);
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
