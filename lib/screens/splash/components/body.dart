
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../routes.dart';
import '../../../size_config.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final List<List<String>> _spalshData = [
    ["Welcome to Tokoto, Lets shop!", "assets/images/splash_1.png"],
    ["Page2 Sologan \n change line", "assets/images/splash_2.png"],
    ["Page3 Sologan", "assets/images/splash_3.png"]
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                  // currentPage = value;
                },
                itemCount: _spalshData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: _spalshData[index][0],
                  image: _spalshData[index][1],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          _spalshData.length, (index) => buildDot(index)),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                        text: "Continue",
                        press: () => Get.toNamed(Routes.signInScreen)),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      width: index == currentPage ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
          color: index == currentPage ? kPrimaryColor : const Color(0xffd8d8d8),
          borderRadius: const BorderRadius.all(Radius.circular(3))),
    );
  }
}
