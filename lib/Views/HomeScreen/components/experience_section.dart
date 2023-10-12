import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/Utils/app_images.dart';
import 'package:portfolio_landing_page/Views/HomeScreen/components/animated_card.dart';
import 'package:portfolio_landing_page/Widgets/custom_text.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: 'What is do',
          fontSize: 35,
        ),
        AnimatedCard(
          imgPath: AppImages.webImage,
          text: 'Web development',
          width: 300.0,
        ),
        SizedBox(
          height: 35,
        ),
        AnimatedCard(
          imgPath: AppImages.appImage,
          text: 'App development',
          fit: BoxFit.contain,
          width: 300.0,
          reverse: true,
        ),
        SizedBox(
          height: 35,
        ),
        AnimatedCard(
          imgPath: AppImages.firebaseImage,
          text: 'Back End development',
          width: 300.0,
        ),
      ],
    );
  }
}
