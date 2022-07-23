import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.iconData,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String iconData;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            const Color(0xfff5f6f9),
          ),
          overlayColor: MaterialStateProperty.all(
            Colors.grey.withOpacity(.2),
          ),
        ),
        onPressed: press,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 50,
          width: double.infinity,
          child: Row(
            children: [
              SvgPicture.asset(
                iconData,
                color: kPrimaryColor,
                width: 22,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
