import 'package:flutter/material.dart';

import 'iconbtn_with_counter.dart';
import 'search_feild.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SearchFeild(),
        IconBtnWithCounter(
          iconSrc: "assets/icons/Cart Icon.svg",
          press: () {},
          count: 0,
        ),
        IconBtnWithCounter(
          iconSrc: "assets/icons/Bell.svg",
          press: () {},
          count: 3,
        ),
      ],
    );
  }
}
