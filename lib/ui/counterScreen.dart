import 'package:bloc_example/counter/counter_event.dart';
import 'package:bloc_example/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter/counter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc,CountState>(
                builder: (BuildContext context, state) {
                return Text(state.count.toString());
              },),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    context.read<CounterBloc>().add(Increment());
                  }, child: Text('incement')),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(onPressed: (){
                    context.read<CounterBloc>().add(Decrement());
                  }, child: Text('decrement')),
                ],
              )


            ]
        )
    );
  }
}
