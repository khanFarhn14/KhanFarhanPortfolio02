import 'package:flutter/material.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/about_me/section_1.dart';
import '../../widgets/about_me/section_2/tb_mb_section_2.dart';
import '../../widgets/about_me/section_3.dart';
import '../../widgets/connect/connect.dart';
import '../../widgets/connect/touch_my_card.dart';
import '../../widgets/navigation_bar/devices/tablet_nav_bar.dart';
import '../../../utilities/constants/colors.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/developer_designer/tablet_developer_designer.dart';
import '../../widgets/greetings.dart';
import '../../widgets/my_skills/tablet_my_skills.dart';

class TbltHeroScreen extends StatelessWidget {
  const TbltHeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final double screenWidth = MediaQuery.of(context).size.width;
    const double sectionHeight = 104; 
    const double groupHeight = 48;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42,),
          child: TabletNavBar(controller: scrollController,),
        ),
      ),
      
      backgroundColor: primary,
      body: ListView(
        controller: scrollController,
        children: [
          CenteredView(
            paddingHorizontal: 64,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                const SizedBox(height: groupHeight),
            
                Greetings(textHeadingStyle: headingLarge(tabletH3FontSize), textMessageStyle: content(tabletcontentFontSize),),
            
                const SizedBox(height: groupHeight),

                const TabletDeveloperDesigner(),
        
                const SizedBox(height: sectionHeight,),

                const TbltMySkills(),

                const SizedBox(height: sectionHeight,),

                Section1(aboutMeTxt: headingLarge(tabletH2FontSize), heroTxt: headingMedium(tabletH3FontSize), bio: content(tabletcontentFontSize), startingHeight: 64, contentHeight: 24, ),
            
                const SizedBox(height: groupHeight),
              ],
            )
          ),

          const TbMbSection2(height: 450, horizontalPadding: 64, fontSize: tabletcontentFontSize, num: 0,),

          const SizedBox(height: groupHeight),

          CenteredView(
            paddingHorizontal: 54,
            child: Column(
              children: [
                Section3(questionStyle: headingMedium(tabletH2FontSize), fontSize: tabletcontentFontSize,),

                const SizedBox(height: sectionHeight,),

                Text("Connect with me and let's bring your ideas to life!", style: headingLarge(tabletH2FontSize), textAlign: TextAlign.center,),

                const SizedBox(height: groupHeight),

                const Connect(),

                const SizedBox(height: groupHeight),

                screenWidth < 900 ? const TouchMyCard(cardFontSize: 16, cardDesFontSize: 14, buttonFontSize: tabletcontentFontSize,) : const SizedBox(height: 0,),

                Center(child: Text(getCopyRight(), style: copyRight(10))),

                const SizedBox(height: groupHeight,),
              ],
            ), 
          ),
        ]
      )
    );
  }
}