import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/constants.dart';
import '../../../utilities/font_styles/font_style.dart';

class TbMbSection2 extends StatelessWidget {
  final double height, horizontalPadding, fontSize, num;
  const TbMbSection2({super.key, required this.height, required this.horizontalPadding, required this.fontSize, required this.num});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      width: MediaQuery.of(context).size.width,
      height: height,
      color: primaryDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(getShowCaseDesign(), width: (screenWidth/3) + num),
          const SizedBox(height: 24,),
          Text(AboutMe().getMssge(), style: content(fontSize), textAlign: TextAlign.center,),
        ],
      )
    );
  }
}