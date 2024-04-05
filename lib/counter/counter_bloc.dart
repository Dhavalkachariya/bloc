import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';


class CounterBloc extends Bloc<CounterEvent, CountState> {
  CounterBloc() : super(const CountState()) {
    on<Increment>(_incrementCounter);
    on<Decrement>(_decrementCounter);
  }

  void _incrementCounter(Increment event ,Emitter<CountState> emit){
    emit(state.copyWith(count: state.count + 1));
  }
  void _decrementCounter(Decrement event ,Emitter<CountState> emit){
    emit(state.copyWith(count: state.count - 1));
  }


}
