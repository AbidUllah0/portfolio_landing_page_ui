import 'package:flutter/material.dart';

class TabsMobile extends StatefulWidget {
  final title;
  VoidCallback onPressed;

  TabsMobile({required this.onPressed, required this.title});
  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      elevation: 20,
      shape: RoundedRectangleBorder(),
      height: 50,
      minWidth: 200,
      color: Colors.black,
      child: Text('sd'),
    );
  }
}
