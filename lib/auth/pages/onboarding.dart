import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starry_ecommerce/asset/color.dart';
import 'package:starry_ecommerce/auth/pages/sign_in.dart';
import 'package:starry_ecommerce/main.dart';
import 'package:starry_ecommerce/models/onboarding_model.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // PageView containing image, title, and description
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 40),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(contents[i].image)),
                            const SizedBox(height: 24),
                            Text(
                              contents[i].title,
                              textAlign: TextAlign.center,
                              style:  GoogleFonts.plusJakartaSans(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              contents[i].discription,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColor.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          // Dots and Button area at the bottom
          Column(
            children: [
              // Dots indicator with animation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index),
                ),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 36, top: 48),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignInScreen()));
                    }
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        AppColor.buttonPrimary),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9999),
                      ),
                    ),
                  ),
                  child: Text(
                    currentIndex == contents.length - 1
                        ? 'Get Started'
                        : 'Continue',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: AppColor.textWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Dot builder with animated transition
  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? AppColor.dotEnabled
            : AppColor.dotDisabled,
      ),
    );
  }
}
