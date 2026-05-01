import 'package:first_application/cubit/auth/auth_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  AuthCubit() : super(AuthInitialState());

  void login(String email, String password) async {
    emit(AuthLoadingState());
    await Future.delayed(Duration(seconds: 3));

    if (email == "bardejanikhil@gmail.com" && password == "123") {
      emit(AuthSuccessState());
    } else {
      emit(AuthFailureState("Invalid email or password"));
    }
  }
}
