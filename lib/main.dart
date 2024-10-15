import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starry_ecommerce/asset/color.dart';
import 'package:starry_ecommerce/auth/pages/onboarding.dart';
import 'package:starry_ecommerce/auth/pages/sign_in.dart';
import 'package:starry_ecommerce/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starry App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
      child: Text('when the'),
    ),
      );
  }
}