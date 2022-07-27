import 'package:firebasexample/screens/home_screen.dart';
import 'package:firebasexample/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'models/user_model.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(builder: (_, AsyncSnapshot<User?> snapshot) {
      if (snapshot.connectionState == ConnectionState.active) {
        final User? user = snapshot.data;
        return user == null ? const LoginScreen() : const HomeScreen();
      } else {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    });
  }
}
