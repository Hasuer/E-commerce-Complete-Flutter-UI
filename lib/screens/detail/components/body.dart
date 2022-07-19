import 'package:e_commerce_app_ui/components/default_button.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../../../models/Product.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_image.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  press: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xfff6f7f9),
                  // color: Colors.transparent,
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.screenWidth * .15,
                          ).copyWith(
                            bottom: SizeConfig.screenWidth * .07,
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
