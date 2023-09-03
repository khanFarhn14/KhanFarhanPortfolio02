import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';

class MbleMySkills extends StatelessWidget {
  const MbleMySkills({super.key});

  @override
  Widget build(BuildContext context) {
    final boxWidth = (((MediaQuery.of(context).size.width)-24)/3)-10;

    return Column(
      children: [
        Center(child: Text("My Skills", style: headingLarge(mobileH2FontSize),),),
        const SizedBox(height: 24,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Column(
              children: [

                skillTile(getUIDesign(), 'User Interface Designing', boxWidth),
                const SizedBox(height: 24,),

                skillTile(getJava(), 'Java', boxWidth),
                const SizedBox(height: 24,),

                skillTile(getCSS(), 'CSS', boxWidth),
              ],
            ),

            Column(
              children: [

                skillTile(getFlutter(), 'Flutter', boxWidth),
                const SizedBox(height: 24,),

                skillTile(getHTML(), 'HTML', boxWidth),
                const SizedBox(height: 24,),
                
                skillTile(getOffice(), 'Microsoft Office', boxWidth),
              ],
            ),
          ]
        ),
      ],
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
            SvgPicture.asset(path, height: 68,),
            const SizedBox(height: 24,),
            Text(title, style: content(mobilecontentFontSize)),
          ],
        )
      ],
    );
  }
}