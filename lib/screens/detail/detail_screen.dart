import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/Product.dart';
import 'components/body.dart';
import 'components/custom_appbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product = Get.arguments;
    return Scaffold(
      backgroundColor: const Color(0xfff5f6f9),
      appBar: CustomAppBar(
        rating: product.rating,
      ),
      body: Body(product: product),
    );
  }
}
