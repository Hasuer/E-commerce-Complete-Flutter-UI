import 'package:e_commerce_app_ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'iconbtn_with_counter.dart';
import 'search_feild.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SearchFeild(),
        IconBtnWithCounter(
          iconSrc: "assets/icons/Cart Icon.svg",
          press: () => Get.toNamed(Routes.cartScreen),
          count: 0,
        ),
        IconBtnWithCounter(
          iconSrc: "assets/icons/Bell.svg",
          press: () {},
          count: 3,
        ),
      ],
    );
  }
}
