import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'basket_state.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(BasketInitial());

  int A=0;
  int B=0;

  void increase_TeamA(int F)
  {

   A=A+F;
   emit(addstateA());

  }

  void increase_TeamB(int F)
  {

    B=B+F;
    emit(addstateB());

  }

  void rest()
  {
   A=0;
    B=0;
   emit(addstateA());

  }


}
