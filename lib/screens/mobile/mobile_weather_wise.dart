import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

class MobileWeatherWise extends StatelessWidget {
  const MobileWeatherWise({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionHeight = 48;
    const double groupHeight = 24;
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MobileNavBar(backgroundColor : weatherWisePrimary),
      ),

      backgroundColor: weatherWisePrimary,

      body: ListView(
        children: [
          CenteredView(
            paddingHorizontal: 24,
            child: Column(
              children: [
                const SizedBox(height: sectionHeight,),

                Text(projectsContent[0].title, style: headingMedium(mobileH2FontSize)),

                const SizedBox(height: groupHeight,),

                SectionIntroductionSmall(
                  headingSmallFontSize: mobileH3FontSize,
                  contentFontSize: mobilecontentFontSize,
                  introduction: projectsContent[0].introduction,
                  objective: projectsContent[0].projectObjective!,
                  secondaryColor: projectsContent[0].secondaryColor!,
                  heroImagePath: projectsContent[0].heroImagePath,
                ),

                const SizedBox(height: sectionHeight,),

                const SectionApproachandMethodology(fontMedium: mobileH3FontSize),

                const SizedBox(height: sectionHeight,),

                Text('Weather Wise Backend Architecture', style: headingSmall(mobileH3FontSize), textAlign: TextAlign.center,),

                const SizedBox(height: groupHeight,),

                SizedBox(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SvgPicture.asset(getWeatherWiseArchitecture(), width: 500,),
                    ],
                  ),
                ),

                const SizedBox(height: groupHeight,),

                Text('During the development of this application, I attempted to follow the SOLID principle and understand the architecture of the models that convert the JSON data to Dart objects. This was a particularly challenging task for me.', style: content(mobilecontentFontSize), textAlign: TextAlign.center,),

                const SizedBox(height: sectionHeight),

                Text('Technology & Tools Used', style: headingSmall(mobileH3FontSize), textAlign: TextAlign.center,),

                const SizedBox(height: groupHeight,),

                SectionTechnologyandToolsCards(
                  cards: [
                    getOpenWeatherCard,
                    getPostmanCard,
                    getFigmaCard(weathrWiseSecondary),
                    getVScodeCard(weathrWiseSecondary),
                    getGitHubCard(weathrWiseSecondary),
                    getFlutterCard(weathrWiseSecondary)
                  ]
                ),

                const SizedBox(height: sectionHeight,),

                SectionKeyFeatureandFunctionalitySmall(
                  keyFeature: projectsContent[0].keyFeatureAndFunctionality, 
                  learnedLesson: projectsContent[0].learnedLesson,
                ),

                const SizedBox(height: groupHeight,),

                Text('By developing this application, I was able to gain a better understanding of how complex JSON data can be managed using Object Oriented Programming', style: content(mobilecontentFontSize), textAlign: TextAlign.start,),

                const SizedBox(height: sectionHeight,),

                SectionVisualPrototypeSmall(
                  imagePath1: projectsContent[0].lastImage1,
                  imagePath2: projectsContent[0].lastImage2,
                  gitHubLink: projects[0].gitHubLink,
                  figmaLink: projectsContent[0].figmaLink,
                ),

                const SizedBox(height: sectionHeight,),

                Center(child: Text(getCopyRight(), style: copyRight(10), textAlign: TextAlign.center,)),
                
                const SizedBox(height: groupHeight,),
              ],
            )
          )
        ],
      )
    );
  }
}