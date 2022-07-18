import "package:flutter/material.dart";

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(10)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0XFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(
              text: "A summer surprise\n",
              style: TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(24),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
