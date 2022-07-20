import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/models/Cart.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/default_button.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30),
        ),
        // WE USE THIS HEIGHT ONLY FOR DEMO
        // height: 174,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xffdadada).withOpacity(.15),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                const Text("Add coucher code"),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Total: \n"),
                      TextSpan(
                        text: "\$337.15",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(text: "Check out", press: () {}),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
