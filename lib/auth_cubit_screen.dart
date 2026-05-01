import 'package:first_application/cubit/auth/auth_cubit.dart';
import 'package:first_application/cubit/auth/auth_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubitScreen extends StatelessWidget {
  const AuthCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: Text("Auth cubit")),
            body: BlocConsumer<AuthCubit, AuthCubitState>(
              builder: (context, state) {
                if (state is AuthSuccessState) {
                  return Center(child: CircularProgressIndicator());
                }
                return SizedBox();
              },
              listener: (context, state) {
                if (state is AuthFailureState) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(state.msg)));
                }
                if (state is AuthSuccessState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Successfully logged in")),
                  );
                }
              },
            ),
            bottomSheet: ElevatedButton(
              onPressed: () {
                context.read<AuthCubit>().login(
                  "bardejanikhil@gmail.com",
                  "123",
                );
              },
              child: Text("Login"),
            ),
          );
        },
      ),
    );
  }
}
