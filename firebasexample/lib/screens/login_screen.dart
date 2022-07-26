import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('login'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: emailController, 
            decoration: InputDecoration(
                        labelText: "Email",          
                        ),
                        ),
                        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: passwordController, 
            decoration: InputDecoration(
                        labelText: "Password",          
                        ),
                        ),
                        ),
          ElevatedButton(onPressed: () {}, child: Text('Login')),          
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/register');
          }, child: Text('Register'))],
      ),

    );
  }
}