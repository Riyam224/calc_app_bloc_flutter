import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  int counter1 = 0;
  String opertator = "";
  int counter2 = 0;
  num result = 0;

  CalculatorBloc() : super(CalculatorInitial()) {
    on<CalculatorEvent>((event, emit) {
      if (event is IncreamentEvent1) {
        counter1++;

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      } else if (event is IncreamentEvent2) {
        counter2++;

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      } else if (event is DcrementEvent1) {
        counter1--;

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      } else if (event is DcrementEvent2) {
        counter2--;

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      } else if (event is AddEvent) {
        opertator = "+";
        result = (counter1 + counter2);

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      } else if (event is SubstractionEvent) {
        opertator = "-";
        result = (counter1 - counter2);

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      } else if (event is MultiplyEvent) {
        opertator = "*";
        result = (counter1 * counter2);

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      } else if (event is DevisionEvent) {
        opertator = "/";
        result = (counter1 / counter2);

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      } else {
        counter1 = 0;
        counter2 = 0;
        result = 0;
        opertator = "";

        emit(CounterValueChanged(counter1, counter2, result, opertator));
      }
    });
  }
}
