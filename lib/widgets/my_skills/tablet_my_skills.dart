import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';

class TbltMySkills extends StatelessWidget {
  const TbltMySkills({super.key});

  @override
  Widget build(BuildContext context) {
    final boxWidth = (((MediaQuery.of(context).size.width)-64)/3)-60;

    return Column(
      children: [
        Center(child: Text("My Skills", style: headingLarge(tabletH2FontSize),),),

        const SizedBox(height: 64,),

        Wrap(
          children: [

            skillTile(getUIDesign(), 'User Interface Designing', boxWidth),

            skillTile(getFlutter(), 'Flutter', boxWidth),

            skillTile(getJava(), 'Java', boxWidth),
          ],
        ),
        const SizedBox(height: 40 ,),
        Wrap(
          children: [
            skillTile(getHTML(), 'HTML', boxWidth),

            skillTile(getCSS(), 'CSS', boxWidth),

            skillTile(getOffice(), 'Microsoft Office', boxWidth),
          ],
        )  
      ]
    );
  }

  Widget skillTile(String path, String title, double boxWidth){
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: boxWidth
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(path, height: 74,),
            const SizedBox(height: 24,),
            Text(title, style: content(tabletcontentFontSize)),
          ],
        )
      ],
    );
  }
}