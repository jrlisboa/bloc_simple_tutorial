import 'dart:async';
import 'package:bloc/bloc.dart';

enum CounterType {
	entry,
	exit,
}

class CounterBloc extends Bloc<CounterType, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(
    CounterType event,
  ) async* {
    if (event == CounterType.entry) {
			yield state + 1;
		} else if (event == CounterType.exit) {
			yield state - 1;
		}
  }
}
