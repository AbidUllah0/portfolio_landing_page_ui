import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'drawer_tabs.dart';

Drawer buildDrawer() {
  return Drawer(
    child: Column(
      children: [
        DrawerHeader(
          padding: EdgeInsets.only(bottom: 10),
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(
              'assets/images/profile1.jpeg',
            ),
          ),
        ),
        DrawerTabs(text: 'Home', onPressed: () {}),
        SizedBox(
          height: 20,
        ),
        DrawerTabs(text: 'Works', onPressed: () {}),
        SizedBox(
          height: 20,
        ),
        DrawerTabs(text: 'Blog', onPressed: () {}),
        SizedBox(
          height: 20,
        ),
        DrawerTabs(text: 'About', onPressed: () {}),
        SizedBox(
          height: 20,
        ),
        DrawerTabs(text: 'Contact', onPressed: () {}),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () async {
                await launch(
                    'https://www.instagram.com/abidullahkhanorakzai233');
              },
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.black,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () async {
                await launch('https://www.youtube.com/@itskillswithabid4004');
              },
              icon: FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.black,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () async {
                await launch('https://www.github.com/AbidUllah0');
              },
              icon: FaIcon(
                FontAwesomeIcons.github,
                color: Colors.black,
                size: 35,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
