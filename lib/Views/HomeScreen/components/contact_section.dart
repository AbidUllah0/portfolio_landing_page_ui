import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/Views/HomeScreen/components/customTextForm.dart';
import 'package:portfolio_landing_page/Widgets/custom_text.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      spacing: 20,
      alignment: WrapAlignment.center,
      children: [
        CustomText(
          text: 'Contact me',
          fontSize: 35,
        ),
        CustomTextFormField(
          text: 'First Name',
          hintText: 'Please type first name',
          containerWidth: MediaQuery.of(context).size.width / 1.4,
        ),
        CustomTextFormField(
          text: 'Last Name',
          hintText: 'Please type Last name',
          containerWidth: MediaQuery.of(context).size.width / 1.4,
        ),
        CustomTextFormField(
          text: 'Email',
          hintText: 'Please type Email Addredd',
          containerWidth: MediaQuery.of(context).size.width / 1.4,
        ),
        CustomTextFormField(
          text: 'Phone number',
          hintText: 'Please type Phone number',
          containerWidth: MediaQuery.of(context).size.width / 1.4,
        ),
        CustomTextFormField(
          text: 'Message',
          hintText: 'Message',
          containerWidth: MediaQuery.of(context).size.width / 1.4,
          maxLines: 10,
        ),
        MaterialButton(
          onPressed: () {},
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          minWidth: MediaQuery.of(context).size.width / 2.2,
          color: Colors.tealAccent,
          child: CustomText(
            text: 'Submit',
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
