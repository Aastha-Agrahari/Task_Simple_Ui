import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_simple_ui/login/login_screen.dart';
import 'package:task_simple_ui/signup/signup_screen.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login / Signup UI',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
// Start with the Login screen
      home: const LoginScreen(),
// Simple routes if needed
      routes: {
        '/signup': (context) => const SignupScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}