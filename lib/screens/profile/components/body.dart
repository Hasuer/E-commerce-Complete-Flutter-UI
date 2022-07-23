import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(
            height: 20,
          ),
          ProfileMenu(
            iconData: "assets/icons/User Icon.svg",
            text: "My Account",
            press: () {},
          ),
          ProfileMenu(
            iconData: "assets/icons/Bell.svg",
            text: "Notifacation",
            press: () {},
          ),
          ProfileMenu(
            iconData: "assets/icons/Question mark.svg",
            text: "Setting",
            press: () {},
          ),
          ProfileMenu(
            iconData: "assets/icons/User Icon.svg",
            text: "Helper Center",
            press: () {},
          ),
          ProfileMenu(
            iconData: "assets/icons/Log out.svg",
            text: "Log Out",
            press: () {},
          ),
        ],
      ),
    );
  }
}
