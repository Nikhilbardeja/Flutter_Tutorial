import 'package:first_application/bloc/auth/auth_event.dart';
import 'package:first_application/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLadingState());
      await Future.delayed(Duration(seconds: 2));

      String email = event.email;
      String password = event.password;

      if (email == "bardejanikhil@gmail.com" && password == "123") {
        emit(AuthSuccessState());
      } else {
        emit(AuthFailState("Invalid email or password"));
      }
    });
  }
}
