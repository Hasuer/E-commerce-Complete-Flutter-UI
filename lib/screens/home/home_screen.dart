import 'package:e_commerce_app_ui/enums.dart';
import 'package:e_commerce_app_ui/screens/profile/components/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomBar(selectedMenu: MenuState.home),
    );
  }
}
