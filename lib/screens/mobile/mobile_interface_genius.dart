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

class MobileInterfaceGenius extends StatelessWidget {
  const MobileInterfaceGenius({super.key});

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

                Text(projectsContent[2].title, style: headingMedium(mobileH2FontSize)),

                const SizedBox(height: groupHeight,),

                SectionIntroductionSmall(
                  headingSmallFontSize: mobileH3FontSize,
                  contentFontSize: mobilecontentFontSize,
                  introduction: projectsContent[2].introduction,
                  objective: projectsContent[2].projectObjective!,
                  secondaryColor: projectsContent[2].secondaryColor!,
                  heroImagePath: projectsContent[2].heroImagePath,
                ),

                const SizedBox(height: sectionHeight,),

                Text('Approach and Methodology', style: headingSmall(mobileH3FontSize)),

                const SizedBox(height: groupHeight,),

                const SectionIGApproachandMethodology(),

                const SizedBox(height: sectionHeight,),

                Text('Technology & Tools Used', style: headingSmall(mobileH3FontSize)),

                const SizedBox(height: groupHeight,),

                SectionTechnologyandToolsCards(
                  cards: [
                    getFigmaCard(const Color(0xffDEDEDD)),
                    getFlutterCard(const Color(0xffDEDEDD)),
                    getVScodeCard(const Color(0xffDEDEDD)),
                    getGitHubCard(const Color(0xffDEDEDD)),
                  ]
                ),

                const SizedBox(height: sectionHeight,),

                SectionKeyFeatureandFunctionalitySmall(
                  keyFeature: projectsContent[2].keyFeatureAndFunctionality, 
                  learnedLesson: projectsContent[2].learnedLesson,
                ),

                const SizedBox(height: sectionHeight,),

              ]
            ),
          ),

          SectionVisualPrototypeSmall(
            imagePath1: projectsContent[2].lastImage1,
            imagePath2: projectsContent[2].lastImage2,
            gitHubLink: projects[2].gitHubLink,
            figmaLink: projectsContent[2].figmaLink,
          ),

          const SizedBox(height: sectionHeight,),

          Center(child: Text(getCopyRight(), style: copyRight(10), textAlign: TextAlign.center,)),
          
          const SizedBox(height: groupHeight,),
        ],
      )
    );
  }
}