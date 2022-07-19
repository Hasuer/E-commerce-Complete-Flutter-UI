import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../controller/detail_page_controller.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'small_preview.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailPageController>(
        init: DetailPageController(),
        builder: (controller) {
          return Column(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(238),
                height: getProportionateScreenWidth(238),
                child: Image.asset(product.images[controller.selectedIndex]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    product.images.length,
                    (index) => SmallPreview(
                      product: product,
                      index: index,
                      selectedIndex: controller.selectedIndex,
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }
}
