import 'package:bloc/bloc.dart';

enum CounterEvents { increment, decrement }

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvents events) async* {
    // TODO: implement mapEventToState
    switch (events) {
      case CounterEvents.increment:
        yield state + 1;
        break;
      case CounterEvents.decrement:
        yield state - 1;
        break;
    }
  }
}
