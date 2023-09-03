import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/about_me/section_1.dart';
import '../../widgets/about_me/section_2/section_2.dart';
import '../../widgets/about_me/section_3.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/connect/connect.dart';
import '../../widgets/developer_designer/desktop_developer_designer/desktop_developer_designer.dart';
import '../../widgets/greetings.dart';
import '../../widgets/my_skills/desktop_my_skills.dart';
import '../../widgets/navigation_bar/devices/desktop_hero_nav_bar.dart';

class DsktpHeroScreen extends StatefulWidget {
  const DsktpHeroScreen({super.key});

  @override
  State<DsktpHeroScreen> createState() => _DsktpHeroScreenState();
}

class _DsktpHeroScreenState extends State<DsktpHeroScreen> {
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    const double sectionHeight = 200;
    const double groupHeight = 48;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 190,),
          child: DesktopHeroNavBar(controller: scrollController,),
        ),
      ),
      
      backgroundColor: primary,
      body: ListView(
        controller: scrollController,
        children: [
          CenteredView(
            paddingHorizontal: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                const SizedBox(height: groupHeight),
                
                Greetings(textHeadingStyle: headingLarge(desktpH2FontSize), textMessageStyle: content(desktpcontentFontSize),),
            
                const SizedBox(height: groupHeight),

                const DesktopDeveloperDesigner(),
        
                const SizedBox(height: sectionHeight,),

                const DsktpMySkills(),
            
                const SizedBox(height: sectionHeight,),

                Section1(aboutMeTxt: headingLarge(desktpH1FontSize),  heroTxt: headingMedium(desktpH2FontSize),bio: content(desktpcontentFontSize), startingHeight: 64, contentHeight: 24,),

                const SizedBox(height: groupHeight),
              ],
            )
          ),

          const Section2(),

          const SizedBox(height: groupHeight),

          CenteredView(
            paddingHorizontal: 200,
            child: Column(
              children: [
                Section3(questionStyle: headingMedium(desktpH2FontSize), fontSize: desktpcontentFontSize,),

                const SizedBox(height: sectionHeight,),

                Text("Connect with me and let's bring your ideas to life!", style: headingLarge(desktpH2FontSize), textAlign: TextAlign.center,),

                const SizedBox(height: groupHeight,),

                const Connect(),
                
                const SizedBox(height: 74,),

                Text(getCopyRight(), style: copyRight(14)),

                const SizedBox(height: 48,),
              ],
            ), 
          )
        ]
      ),
    );
  }
}