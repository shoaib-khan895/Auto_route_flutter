import 'package:bloc/bloc.dart';

class ThirdPageCubit extends Cubit<int> {
  ThirdPageCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}