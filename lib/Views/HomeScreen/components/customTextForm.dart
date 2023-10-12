import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_landing_page/Widgets/custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final text;
  final containerWidth;
  final hintText;
  final maxLines;

  CustomTextFormField(
      {required this.text,
      required this.hintText,
      required this.containerWidth,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          fontSize: 16,
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            maxLines: maxLines == null ? null : maxLines,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.tealAccent,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
