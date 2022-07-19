import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../size_config.dart';
import 'rounded_icon.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.rating,
  }) : super(key: key);
  final double rating;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedBtn(
                iconData: Icons.arrow_back,
                press: () => Get.back(),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Text('$rating'),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset('assets/icons/Star Icon.svg')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
