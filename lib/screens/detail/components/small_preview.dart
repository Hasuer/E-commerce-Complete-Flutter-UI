import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../controller/detail_page_controller.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class SmallPreview extends StatelessWidget {
  const SmallPreview({
    Key? key,
    required this.product,
    required this.index,
    required this.selectedIndex,
  }) : super(key: key);

  final Product product;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailPageController>(
        init: DetailPageController(),
        builder: (controller) {
          return GestureDetector(
            onTap: () => controller.setSelectedIndex(index),
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(5)),
              padding: EdgeInsets.all(getProportionateScreenHeight(8)),
              height: getProportionateScreenWidth(48),
              width: getProportionateScreenWidth(48),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: index == selectedIndex
                          ? kPrimaryColor
                          : Colors.transparent)),
              child: Image.asset(product.images[index]),
            ),
          );
        });
  }
}
