import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(10)),
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: const Color(0XFFF5F6F9),
        borderRadius: BorderRadius.circular(
          getProportionateScreenHeight(50),
        ),
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
