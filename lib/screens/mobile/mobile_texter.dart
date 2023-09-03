import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/navigation_bar/devices/mobile_nav_bar.dart';
import '../../widgets/projects_page/section_approach_and_methodology.dart';
import '../../widgets/projects_page/section_introduction.dart';
import '../../widgets/projects_page/section_keyfeatures_functionality.dart';
import '../../widgets/projects_page/section_technology_tools_card.dart';
import '../../widgets/projects_page/section_visual_prototype.dart';

class MobileTexter extends StatelessWidget {
  const MobileTexter({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionHeight = 48;
    const double groupHeight = 24;

    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MobileNavBar(backgroundColor : primary),
      ),

      backgroundColor: primary,

      body: ListView(
        children: [
          CenteredView(
            paddingHorizontal: 24,
            child: Column(
              children: [
                const SizedBox(height: sectionHeight,),

                Text(projectsContent[1].title, style: headingMedium(mobileH2FontSize)),

                const SizedBox(height: groupHeight,),

                SectionIntroductionSmall(
                  headingSmallFontSize: mobileH3FontSize,
                  contentFontSize: mobilecontentFontSize,
                  introduction: projectsContent[1].introduction,
                  objective: projectsContent[1].projectObjective!,
                  secondaryColor: projectsContent[1].secondaryColor!,
                  heroImagePath: projectsContent[1].heroImagePath,
                ),

                const SizedBox(height: sectionHeight,),

                const SectionTexterApproachandMethodology(),

                const SizedBox(height: sectionHeight,),

                Text('User Flow', style: headingSmall(mobileH3FontSize), textAlign: TextAlign.center,),

                const SizedBox(height: groupHeight,),

                SizedBox(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset(getUserFlowChat(), width: 900,),
                    ],
                  ),
                ),

                const SizedBox(height: sectionHeight,),

                Text('Technology & Tools Used', style: headingSmall(mobileH3FontSize)),

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

                SectionKeyFeatureandFunctionalitySmall(
                  keyFeature: projectsContent[1].keyFeatureAndFunctionality, 
                  learnedLesson: projectsContent[1].learnedLesson,
                ),

                const SizedBox(height: sectionHeight,),

              ],
            ),
          ),
          
          SectionVisualPrototypeSmall(
            imagePath1: projectsContent[1].lastImage1,
            imagePath2: null,
            gitHubLink: projects[1].gitHubLink,
            figmaLink: projectsContent[1].figmaLink,
          ),

          const SizedBox(height: sectionHeight,),

          Center(child: Text(getCopyRight(), style: copyRight(10), textAlign: TextAlign.center,)),
          
          const SizedBox(height: groupHeight,),
        ],
      )
    );
  }
}