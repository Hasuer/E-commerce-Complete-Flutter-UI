import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 115,
          width: 115,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/Profile Image.png"),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xfff5f6f9),
                  border: Border.all(width: 2, color: Colors.white)),
              padding: const EdgeInsets.all(12),
              height: 46,
              width: 46,
              child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
