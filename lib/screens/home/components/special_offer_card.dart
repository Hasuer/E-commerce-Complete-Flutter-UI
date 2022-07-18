import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.picSrc,
    required this.press,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String picSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(20)),
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                picSrc,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff343434).withOpacity(.4),
                      const Color(0xff343434).withOpacity(.1),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10)),
                child: Text.rich(TextSpan(
                  style: const TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                        text: "$title\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                        )),
                    TextSpan(text: subTitle)
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
