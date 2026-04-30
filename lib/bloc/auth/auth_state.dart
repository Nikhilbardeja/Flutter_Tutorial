abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLadingState extends AuthState {}

class AuthSuccessState extends AuthState {}

class AuthFailState extends AuthState {
  String msg;
  AuthFailState(this.msg);
}
