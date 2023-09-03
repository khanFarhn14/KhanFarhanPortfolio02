import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';


class DsktpMySkills extends StatelessWidget {
  const DsktpMySkills({super.key});

  @override
  Widget build(BuildContext context) {
    final boxWidth = (((MediaQuery.of(context).size.width)-400)/3)-30;

    return Column(
      children: [
        Center(child: Text("My Skills", style: headingLarge(desktpH1FontSize),),),

        const SizedBox(height: 64,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            skillTile(getUIDesign(), 'User Interface Designing', boxWidth),

            skillTile(getFlutter(), 'Flutter', boxWidth),

            skillTile(getJava(), 'Java', boxWidth),
          ],
        ),
        const SizedBox(height: 40 ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            SvgPicture.asset(path, height: 144,),
            const SizedBox(height: 24,),
            Text(title, style: content(desktpcontentFontSize)),
          ],
        )
      ],
    );
  }
}