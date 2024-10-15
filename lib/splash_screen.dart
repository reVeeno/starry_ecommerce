import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:starry_ecommerce/asset/color.dart';
import 'package:starry_ecommerce/main.dart';
import 'package:starry_ecommerce/auth/pages/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 3)).then((_) {
      if (mounted) {
        Navigator.pushReplacement(
          context, 
          MaterialPageRoute(builder: (context) => Onboarding())
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.buttonPrimary,
      body: Center(
        child: Image.asset('assets/images/starry_logo.png'),
      ),
    );
  }
}
