import "package:flutter/material.dart";

import '../../../size_config.dart';
import 'section_title.dart';
import 'special_offer_card.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Special for you",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                title: "SmartPhone",
                subTitle: "18 Brands",
                picSrc: "assets/images/Image Banner 2.png",
                press: () {},
              ),
              SpecialOfferCard(
                title: "Fashion",
                subTitle: "24 Brands",
                picSrc: "assets/images/Image Banner 3.png",
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
