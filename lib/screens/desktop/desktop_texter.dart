import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/navigation_bar/devices/desktop_nav_bar.dart';
import '../../widgets/projects_page/section_approach_and_methodology.dart';
import '../../widgets/projects_page/section_introduction.dart';
import '../../widgets/projects_page/section_keyfeatures_functionality.dart';
import '../../widgets/projects_page/section_technology_tools_card.dart';
import '../../widgets/projects_page/section_visual_prototype.dart';

class DesktopTexter extends StatelessWidget {
  const DesktopTexter({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double sectionHeight = 200;
    const double groupHeight = 48;

    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 190),
          child: DesktopNavBar(backgroundColor: primary,)
        ),
      ),

      backgroundColor: primary,

      body: ListView(
        children: [
          CenteredView(
            paddingHorizontal: 200,
            child: Column(
              children: [
                const SizedBox(height: groupHeight,),

                Text(projectsContent[1].title, style: headingLarge(desktpH1FontSize)),

                const SizedBox(height: groupHeight,),

                SectionIntroduction(
                  headingMediumFontSize: desktpH2FontSize,
                  headingSmallFontSize: desktpH2FontSize,
                  contentFontSize: desktpcontentFontSize,
                  introduction: projectsContent[1].introduction,
                  objective: projectsContent[1].projectObjective!,
                  secondaryColor: projectsContent[1].secondaryColor!,
                  heroImagePath: projectsContent[1].heroImagePath,
                ),

                const SizedBox(height: sectionHeight,),

                const SectionTexterApproachandMethodology(),

                const SizedBox(height: sectionHeight,),

                Text('User Flow', style: headingMedium(desktpH2FontSize)),

                const SizedBox(height: groupHeight,),

                Image.asset(getUserFlowChat(), width: screenWidth-50,),

                const SizedBox(height: sectionHeight,),

                Text('Technology & Tools Used', style: headingMedium(desktpH2FontSize)),

                const SizedBox(height: groupHeight,),

                SectionTechnologyandToolsCards(
                  cards: [
                    getFlutterCard(texterSecondaryColor.withOpacity(0.2)),
                    getFirebaseCard(texterSecondaryColor.withOpacity(0.2)),
                    getFigmaCard(texterSecondaryColor.withOpacity(0.2)),
                    getGitHubCard(texterSecondaryColor.withOpacity(0.2)),
                    getVScodeCard(texterSecondaryColor.withOpacity(0.2))
                  ]
                ),

                const SizedBox(height: sectionHeight,),

                SectionKeyFeatureandFunctionality(
                  keyFeature: projectsContent[1].keyFeatureAndFunctionality, 
                  learnedLesson: projectsContent[1].learnedLesson,
                ),

                const SizedBox(height: sectionHeight,),

                SectionVisualPrototype(
                  imagePath1: projectsContent[1].lastImage1,
                  imagePath2: null,
                  gitHubLink: projects[1].gitHubLink,
                  figmaLink: projectsContent[1].figmaLink,
                ),

                const SizedBox(height: 74,),

                Text(getCopyRight(), style: copyRight(14)),

                const SizedBox(height: 48,),
              ],
            ),
            
          )
        ],
      )
    );
  }
}