import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/Views/HomeScreen/components/about_me.dart';
import 'package:portfolio_landing_page/Views/HomeScreen/components/contact_section.dart';
import 'package:portfolio_landing_page/Widgets/custom_text.dart';
import 'components/buildDrawer.dart';
import 'components/experience_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 35,
        ),
      ),
      endDrawer: buildDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.tealAccent,
                  radius: 117,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 113,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 110,
                      backgroundImage:
                          AssetImage('assets/images/profile1.jpeg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: CustomText(
                        text: 'Hello I am',
                        fontSize: 15,
                      ),
                    ),
                    CustomText(
                      text: 'Abid Ullah',
                      fontSize: 40,
                    ),
                    CustomText(
                      text: 'Flutter Developer',
                      fontSize: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      spacing: 3,
                      direction: Axis.vertical,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Wrap(
                      spacing: 9,
                      direction: Axis.vertical,
                      children: [
                        CustomText(
                          text: 'abid.kust2019@gmail.com',
                          color: Colors.grey.shade600,
                        ),
                        CustomText(
                          text: '03339566341',
                          color: Colors.grey.shade600,
                        ),
                        CustomText(
                          text: 'Shahu Khel Hangu',
                          color: Colors.grey.shade600,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 90,
          ),
          //Second Section About ME Section
          AboutMe(),
          SizedBox(
            height: 60,
          ),
          //Third Section What is do
          ExperienceSection(),
          SizedBox(
            height: 60,
          ),
          ContactSection(),
        ],
      ),
    );
  }
}
