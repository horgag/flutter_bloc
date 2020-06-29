import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvents { increment, decrement }

class BlocCounter extends Bloc<CounterEvents, int> {
  @override
  get initialState => 0;

  @override
  Stream<int> mapEventToState(event) async* {
    switch (event) {
      case CounterEvents.increment:
        yield state + 1;
        break;

      case CounterEvents.decrement:
        yield state - 1;

        break;
    }
  }
}
