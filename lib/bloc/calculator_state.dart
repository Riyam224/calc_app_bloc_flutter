part of 'calculator_bloc.dart';

abstract class CalculatorState {}

final class CalculatorInitial extends CalculatorState {}

// todo state
class CounterValueChanged extends CalculatorState {
  final int counter1;
  final int counter2;
  final num result;
  final String operator;

  CounterValueChanged(this.counter1, this.counter2, this.result, this.operator);
}
