import 'package:e_commerce_app_ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'product_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular Product", press: () {}),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demoProducts.length,
              (index) => ProductCard(
                aspectRatio: 1.02,
                width: 140,
                product: demoProducts[index],
                likeBtnPress: () {},
                productPress: () => Get.toNamed(Routes.detailScreen,
                    arguments: demoProducts[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
