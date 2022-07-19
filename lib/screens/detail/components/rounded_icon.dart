import "package:flutter/material.dart";

import '../../../size_config.dart';

class RoundedBtn extends StatelessWidget {
  const RoundedBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);
  final IconData iconData;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        child: Ink(
          child: InkWell(
            onTap: press,
            child: Container(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(iconData),
            ),
          ),
        ),
      ),
    );
  }
}
