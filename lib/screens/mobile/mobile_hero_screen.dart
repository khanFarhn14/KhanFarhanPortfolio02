import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/about_me/section_1.dart';
import '../../widgets/about_me/section_2/tb_mb_section_2.dart';
import '../../widgets/about_me/section_3.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/connect/connect.dart';
import '../../widgets/connect/touch_my_card.dart';
import '../../widgets/developer_designer/mobile_developer_designer.dart';
import '../../widgets/drawer.dart';
import '../../widgets/greetings.dart';
import '../../widgets/my_skills/mobile_my_skills.dart';
import '../../widgets/navigation_bar/devices/mobile_nav_bar.dart';

class MbleHeroScreen extends StatelessWidget {
  const MbleHeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionHeight = 48;
    const double groupHeight = 24;
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MobileNavBar(backgroundColor : primary),
      ),
      
      backgroundColor: primary,
      endDrawer: DrawerMenu(scrollController: scrollController),
      body: ListView(
        controller: scrollController,
        children: [
          CenteredView(
            paddingHorizontal: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                const SizedBox(height: sectionHeight),
            
                Greetings(textHeadingStyle: headingSmall(mobileH3FontSize), textMessageStyle: content(mobilecontentFontSize),),
            
                const SizedBox(height: sectionHeight),

                const MobileDeveloperDesigner(),
        
                const SizedBox(height: sectionHeight,),

                const MbleMySkills(),

                const SizedBox(height: sectionHeight,),

                Section1(aboutMeTxt: headingMedium(mobileH2FontSize), heroTxt: headingSmall(mobileH3FontSize), bio: content(mobilecontentFontSize), startingHeight: 24, contentHeight: 12, ),
                
                const SizedBox(height: sectionHeight,),
              ],
            )
          ),

          const TbMbSection2(height: 320, horizontalPadding: 24, fontSize: mobilecontentFontSize, num: 15,),

          const SizedBox(height: groupHeight),

          CenteredView(
            paddingHorizontal: 24,
            child: Column(
              children: [
                Section3(questionStyle: headingSmall(mobileH3FontSize), fontSize: mobilecontentFontSize,),

                const SizedBox(height: sectionHeight,),

                Text("Connect with me and let's bring your ideas to life!", style: headingSmall(mobileH3FontSize), textAlign: TextAlign.center,),

                const SizedBox(height: groupHeight,)
              ],
            ), 
          ),

          const Connect(),

          const SizedBox(height: groupHeight,),

          CenteredView(
            paddingHorizontal: 24,
            child: Column(
              children: [
                const Center(child: TouchMyCard(cardFontSize: 16, cardDesFontSize: 14, buttonFontSize: mobilecontentFontSize,)),

                // Copyright
                Center(child: Text(getCopyRight(), style: copyRight(10), textAlign: TextAlign.center,)),
                
                const SizedBox(height: groupHeight,),
              ],
            ), 
          ),
        ]
      )
    );
  }
}