import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/constants.dart';
import '../../../utilities/font_styles/font_style.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 200),
      width: MediaQuery.of(context).size.width,
      height: 500,
      color: primaryDark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: ((MediaQuery.of(context).size.width)/3)-20,
            child: Text(AboutMe().getMssge(), style: content(desktpcontentFontSize), textAlign: TextAlign.justify,)
          ),
          Image.asset(getShowCaseDesign(), height: ((MediaQuery.of(context).size.width)/4)-100,),
        ],
      )
    );
  }
}