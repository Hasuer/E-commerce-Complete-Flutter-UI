import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/models/Cart.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            key: UniqueKey(),
            background: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg")
                  ],
                ),
              ),
            ),
            child: CartItemCard(
              cart: demoCarts[index],
            ),
            onDismissed: (direction) {
              demoCarts.removeAt(index);
            },
          ),
        ),
      ),
    );
  }
}
