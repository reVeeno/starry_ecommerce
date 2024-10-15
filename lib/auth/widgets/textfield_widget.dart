import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starry_ecommerce/asset/color.dart';
import 'package:starry_ecommerce/asset/icon.dart';

class TextFieldAuth extends StatefulWidget {
  const TextFieldAuth({
    super.key,
    required this.title,
    required this.prefix,
    required this.text,
    this.suffix,
  });

  final String title;
  final IconData prefix;
  final String text;
  final IconData? suffix;

  @override
  State<TextFieldAuth> createState() => _TextFieldAuthState();
}

class _TextFieldAuthState extends State<TextFieldAuth> {
  // Add a boolean to track the suffix icon state
  bool _isSuffixIconClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.textPrimary),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 48, // Set the desired height based on Figma design
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.textField,
              hintText: widget.text,
              hintStyle: GoogleFonts.plusJakartaSans(
                fontSize: 14, // Adjust font size to fit the height
                fontWeight: FontWeight.w400,
                color: AppColor.textFieldText,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: Icon(
                  widget.prefix,
                  size: 16, // Ensure the icon size fits within the height
                  color: AppColor.textFieldText,
                ),
              ),
              // Update suffix icon based on the current state
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle the state on click
                    _isSuffixIconClicked = !_isSuffixIconClicked;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Icon(
                    _isSuffixIconClicked
                        ? AuthIcon.authEnableIcon // Change the icon when clicked
                        : widget.suffix,         // Default icon
                    size: 14,
                    color: AppColor.textFieldText,
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 10), // Adjust padding to fit the height
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
