import 'package:firebase_core/firebase_core.dart';
import 'package:firebasexample/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService()),
      ],
      child: MaterialApp(
        title: 'Flutter Auth Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Wrapper(),
          '/login': (context) => const LoginScreen(),
          '/register': (context) => const RegisterScreen(),
        },
      ),
    );
  }
}
