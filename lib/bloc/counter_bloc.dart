// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(Initialstate()){
   on<Increment>((event, emit) {

    final currentstatevalue = state.count;
    final incrementedvalue = currentstatevalue+1;

    return emit(CounterState(count: incrementedvalue));

   });
    }
  }

