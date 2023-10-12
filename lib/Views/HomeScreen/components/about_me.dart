import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/Views/HomeScreen/components/teal_container.dart';
import 'package:portfolio_landing_page/Widgets/custom_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: 'About Me',
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text:
                "Hello! I'm Abid Ullah I specialize in flutter development I strive to ensure astounding performance with state of the art security for android, Ios, Web, Mac, Linux ",
            fontSize: 15,
            color: Colors.grey.shade600,
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 7,
            runSpacing: 7,
            children: [
              TealContainer(text: 'Flutter'),
              TealContainer(text: 'Firebase'),
              TealContainer(text: "Api's"),
              TealContainer(text: "Android"),
            ],
          ),
        ],
      ),
    );
  }
}
