import 'package:e_commerce_app_ui/size_config.dart';
import "package:flutter/material.dart";

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const HomeHeader(),
              SizedBox(height: getProportionateScreenHeight(10)),
              const DiscountBanner(),
              SizedBox(height: getProportionateScreenHeight(10)),
              const Categories(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const SpecialOffers(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const PopularProducts()
            ],
          ),
        ),
      ),
    );
  }
}
