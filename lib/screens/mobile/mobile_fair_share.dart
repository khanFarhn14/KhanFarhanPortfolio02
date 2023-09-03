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

class MobileFairShare extends StatelessWidget {
  const MobileFairShare({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionHeight = 48;
    const double groupHeight = 24;

    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MobileNavBar(backgroundColor : fairSharePrimary),
      ),

      backgroundColor: fairSharePrimary,

      body: ListView(
        children: [
          CenteredView(
            paddingHorizontal: 24,
            child: Column(
              children: [
                const SizedBox(height: sectionHeight,),

                Text(projectsContent[3].title, style: headingMedium(mobileH2FontSize)),

                const SizedBox(height: groupHeight,),

                SectionIntroductionSmall(
                  headingSmallFontSize: mobileH3FontSize,
                  contentFontSize: mobilecontentFontSize,
                  introduction: projectsContent[3].introduction,
                  objective: null,
                  secondaryColor: projectsContent[3].secondaryColor!,
                  heroImagePath: projectsContent[3].heroImagePath,
                ),

                const SizedBox(height: sectionHeight,),

                Text('Approach and Methodology', style: headingSmall(mobileH3FontSize)),

                const SizedBox(height: groupHeight,),
                
                const SectionFSApproachandMethodology(),

                const SizedBox(height: sectionHeight,),

                Text('Technology & Tools Used', style: headingSmall(mobileH3FontSize)),

                const SizedBox(height: groupHeight,),

                SectionTechnologyandToolsCards(
                  cards: [
                    getFlutterCard(fairShareSecondary.withOpacity(0.2)),
                    getGitHubCard(fairShareSecondary.withOpacity(0.2)),
                    getVScodeCard(fairShareSecondary.withOpacity(0.2)),
                  ]
                ),

                const SizedBox(height: sectionHeight,),

                SectionKeyFeatureandFunctionalitySmall(
                  keyFeature: projectsContent[3].keyFeatureAndFunctionality, 
                  learnedLesson: projectsContent[3].learnedLesson,
                ),

                const SizedBox(height: sectionHeight,),

                SectionVisualPrototype(
                  imagePath1: projectsContent[3].lastImage1,
                  imagePath2: null,
                  gitHubLink: projects[3].gitHubLink,
                  figmaLink: null,
                ),

                const SizedBox(height: sectionHeight,),

                Text(getCopyRight(), style: copyRight(10), textAlign: TextAlign.center,),

                const SizedBox(height: groupHeight,),
              ],
            ),
          )
        ],
      )
    );
  }
}