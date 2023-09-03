import 'package:khan_farhan_02/widgets/project_show_case.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter/material.dart';
import '../utilities/constants/colors.dart';
import '../utilities/constants/constants.dart';
import '../utilities/font_styles/font_style.dart';
import 'buttons/outlined_button.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double laptopWidth = screenWidth < 900 ? 650 : 750;
    final double titleFontSize = screenWidth < 1280 ? tabletH3FontSize : desktpH3FontSize;
    final double contentFontSize = screenWidth < 1280 ? tabletcontentFontSize : desktpcontentFontSize;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int index = 0; index < 2; index++)
              ProjectShowCase(
                backgroundColor: projects[index].backgroundColor,
                borderColor: projects[index].borderColor,
                projectImage1: projects[index].imagePath_1,
                projectImage2: projects[index].imagePath_2,
                title: projects[index].title,
                date: projects[index].date,
                descrptn: projects[index].description,
                routeLink: projects[index].route,
                gitHubLink: projects[index].gitHubLink,
              ),
          ],
        ),

        const SizedBox(height: 48,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int index = 2; index < 4; index++)
              ProjectShowCase(
                backgroundColor: projects[index].backgroundColor,
                borderColor: projects[index].borderColor,
                projectImage1: projects[index].imagePath_1,
                projectImage2: projects[index].imagePath_2,
                title: projects[index].title,
                date: projects[index].date,
                descrptn: projects[index].description,
                routeLink: projects[index].route,
                gitHubLink: projects[index].gitHubLink,
              ),
          ],
        ),

        const SizedBox(height: 48,),

        Container(
          alignment: Alignment.center,
          width: screenWidth,
          height: 750,
          color: primaryDark,
          child: Image.asset(getThePortrait(), width: laptopWidth,)
        ),

        const SizedBox(height: 24,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('The Portrait', style: headingSmall(titleFontSize)),

            Link(
              target: LinkTarget.blank,
              uri: getThePortraitLink(),
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: OutLinedButton(
                  label: 'Visit Website',
                  verticalPad: 8,
                  horizontalPad: 16,
                  fontSize: contentFontSize,
                  icon: Icons.open_in_new
                ),
              ),
            )
          ],
        ),

        const SizedBox(height: 8,),

        Text('November 2023', style: description(contentFontSize),),
      ],
    );
  }
}

class ProjectListSmallScreen extends StatelessWidget {
  const ProjectListSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double titleFontSize = screenWidth < 1280 ? screenWidth < 500 ? mobileH3FontSize : tabletH3FontSize : desktpH3FontSize;
    final double contentFontSize = screenWidth < 1280 ? screenWidth < 500 ? mobilecontentFontSize : tabletcontentFontSize : desktpcontentFontSize;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int index = 0; index < projects.length; index++)
          ProjectShowCaseSmallScreen(
            backgroundColor: projects[index].backgroundColor,
            borderColor: projects[index].borderColor,
            projectImage1: projects[index].imagePath_1,
            projectImage2: projects[index].imagePath_2,
            title: projects[index].title,
            date: projects[index].date,
            descrptn: projects[index].description,
            routeLink: projects[index].route,
            gitHubLink: projects[index].gitHubLink,
          ),
    
        const SizedBox(height: 24,),
    
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('The Portrait', style: headingMedium(titleFontSize)),
        ),
    
        const SizedBox(height: 24,),
    
        Center(child: Image.asset(getThePortrait(), width: (screenWidth-60),)),
    
        const SizedBox(height: 24,),
    
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text('November 2021', style: description(contentFontSize)),
            ),
    
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,24,0),
              child: Link(
                target: LinkTarget.blank,
                uri: getThePortraitLink(),
                builder: (context, followLink) => GestureDetector(
                  onTap: followLink,
                  child: OutLinedButton(
                    label: 'Visit Website',
                    verticalPad: 8,
                    horizontalPad: 16,
                    fontSize: contentFontSize,
                    icon: Icons.open_in_new
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}