abstract class AuthCubitState {}

class AuthInitialState extends AuthCubitState {}

class AuthLoadingState extends AuthCubitState {}

class AuthSuccessState extends AuthCubitState {}

class AuthFailureState extends AuthCubitState {
  String msg;

  AuthFailureState(this.msg);
}
