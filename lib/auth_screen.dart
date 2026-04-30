import 'package:first_application/bloc/auth/auth_bloc.dart';
import 'package:first_application/bloc/auth/auth_event.dart';
import 'package:first_application/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: Text("Auth Screen bloc"), centerTitle: true),

            body: MultiBlocListener(
              listeners: [
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {},
                ),
              ],
              child: Text("data"),
            ),

            // by BlocConsumer you can use Listener and Builder at once.
            // body: BlocConsumer<AuthBloc, AuthState>(
            //   builder: (context, state) {
            //     return SizedBox();
            //   },
            //   listener: (context, state) {},
            // ),

            // body: BlocListener<AuthBloc, AuthState>( // BlocListner can't update UI
            //   listener: (context, state) {
            //     if (state is AuthSuccessState) {
            //       ScaffoldMessenger.of(
            //         context,
            //       ).showSnackBar(SnackBar(content: Text("Auth Success")));
            //     }
            //   },
            //   child: Center(child: Text("Data")),
            // ),
            // body: BlocBuilder<AuthBloc, AuthState>(
            //   builder: (context, state) {
            //     if (state is AuthLadingState) {
            //       return Center(child: CircularProgressIndicator());
            //     }
            //     if (state is AuthSuccessState) {
            //       return Center(child: Text("Auth Success"));
            //     }
            //     if (state is AuthFailState) {
            //       return Center(child: Text(state.msg));
            //     }
            //     return SizedBox();
            //   },
            // ),
            bottomSheet: ElevatedButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(
                  context,
                  listen: false,
                ).add(LoginEvent("bardejanikhil@gmail.com", "123"));

                //another method
                // context.read<AuthBloc>().add(
                //   LoginEvent("bardejanikhil@gmail.com", "123"),
                // );
              },
              child: Text("Start Login"),
            ),
          );
        },
      ),
    );
  }
}
