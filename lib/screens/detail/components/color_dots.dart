import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../controller/detail_page_controller.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'rounded_icon.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    DetailPageController controller = DetailPageController();
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              index: index,
              selectedColorIndex: controller.selectedColorIndex,
              product: product,
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          RoundedBtn(iconData: Icons.remove, press: () {}),
          const Spacer(),
          RoundedBtn(iconData: Icons.add, press: () {}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.product,
    required this.index,
    required this.selectedColorIndex,
  }) : super(key: key);

  final Product product;
  final int index;
  final int selectedColorIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(1)),
      padding: const EdgeInsets.all(8),
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        // border: Border.all(color: kPrimaryColor),
        border: index == selectedColorIndex
            ? Border.all(color: kPrimaryColor)
            : null,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: product.colors[index],
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
