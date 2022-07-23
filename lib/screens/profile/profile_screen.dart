import 'package:e_commerce_app_ui/enums.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/custom_bottom_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
