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

class TabletFairShare extends StatelessWidget {
  const TabletFairShare({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionHeight = 104; 
    const double groupHeight = 48;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 64),
          child: DesktopNavBar(backgroundColor: fairSharePrimary,)
        ),
      ),

      backgroundColor: fairSharePrimary,

      body: ListView(
        children: [
          CenteredView(
            paddingHorizontal: 64,
            child: Column(
              children: [
                const SizedBox(height: groupHeight,),

                Text(projectsContent[3].title, style: headingMedium(tabletH2FontSize)),

                const SizedBox(height: groupHeight,),

                screenWidth < 850 ? SectionIntroductionSmall(
                  headingSmallFontSize: tabletH3FontSize,
                  contentFontSize: tabletcontentFontSize,
                  introduction: projectsContent[3].introduction,
                  objective: null,

                  secondaryColor: projectsContent[3].secondaryColor!,
                  heroImagePath: projectsContent[3].heroImagePath,
                )
                : 
                SectionIntroduction(
                  headingMediumFontSize: tabletH3FontSize,
                  headingSmallFontSize: tabletH3FontSize,
                  contentFontSize: tabletcontentFontSize,
                  introduction: projectsContent[3].introduction,
                  objective: null,
                  secondaryColor: projectsContent[3].secondaryColor!,
                  heroImagePath: projectsContent[3].heroImagePath,
                ),

                const SizedBox(height: sectionHeight,),

                Text('Approach and Methodology', style: headingMedium(tabletH2FontSize)),

                const SizedBox(height: groupHeight,),
                
                const SectionFSApproachandMethodology(),

                const SizedBox(height: sectionHeight,),

                Text('Technology & Tools Used', style: headingMedium(tabletH2FontSize)),

                const SizedBox(height: groupHeight,),

                SectionTechnologyandToolsCards(
                  cards: [
                    getFlutterCard(fairShareSecondary.withOpacity(0.2)),
                    getGitHubCard(fairShareSecondary.withOpacity(0.2)),
                    getVScodeCard(fairShareSecondary.withOpacity(0.2)),
                  ]
                ),

                const SizedBox(height: sectionHeight,),

                SectionKeyFeatureandFunctionality(
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