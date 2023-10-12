import 'package:flutter/material.dart';

import '../../../Widgets/custom_text.dart';

class TealContainer extends StatelessWidget {
  String text;
  TealContainer({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: CustomText(
        text: text,
        fontSize: 15,
      ),
    );
  }
}
