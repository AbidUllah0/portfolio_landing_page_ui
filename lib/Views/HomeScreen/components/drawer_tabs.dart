import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerTabs extends StatefulWidget {
  String text;
  VoidCallback onPressed;

  DrawerTabs({required this.text, required this.onPressed});

  @override
  State<DrawerTabs> createState() => _DrawerTabsState();
}

class _DrawerTabsState extends State<DrawerTabs> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      height: 50,
      minWidth: 200,
      color: Colors.black,
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
