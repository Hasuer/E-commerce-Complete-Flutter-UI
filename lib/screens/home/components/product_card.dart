import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.width,
    required this.aspectRatio,
    required this.product,
    required this.press,
  }) : super(key: key);
  final double width, aspectRatio;
  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(20)),
      width: getProportionateScreenWidth(width),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: aspectRatio,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(product.images[0]),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            product.title,
            style: const TextStyle(
              color: Colors.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${product.price}",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: press,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                  width: getProportionateScreenWidth(28),
                  height: getProportionateScreenWidth(28),
                  decoration: BoxDecoration(
                    color: product.isFavourite
                        ? kPrimaryColor.withOpacity(.15)
                        : kSecondaryColor.withOpacity(.1),
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(50),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/Heart Icon_2.svg",
                    color: product.isFavourite
                        ? const Color(0xffff4848)
                        : const Color(0xffd8dee4),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
