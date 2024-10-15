import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starry_ecommerce/asset/color.dart';
import 'package:starry_ecommerce/asset/icon.dart';
import 'package:starry_ecommerce/auth/widgets/textfield_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(
            top: 22.0,
            bottom: 28,
          ),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColor.textPrimary),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Howdy! Welcome back, you’ve been missed',
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textSecondary),
            ),
            const SizedBox(
              height: 32,
            ),
            const Column(
              children: [
                TextFieldAuth(title: 'Name', prefix: AuthIcon.userIcon, text: 'John Doe', ),
                SizedBox(height: 20,),
                TextFieldAuth(title: 'Password', prefix: AuthIcon.passwordIcon, text: 'Your Password', suffix: AuthIcon.authDisableIcon,)
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

