import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_corner/smooth_corner.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';

// ignore: must_be_immutable
class SectionTechnologyandToolsCards extends StatelessWidget {
  List<Widget> cards;
  SectionTechnologyandToolsCards({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: screenWidth < 600 ? 12 : 48,
      runSpacing: screenWidth < 600 ? 12 : 48,
      children: cards
    );
  }
}

Widget getOpenWeatherCard = TechnologyCard(imagePath: getOpenWeather(), title: 'Open Weather', desList: const ['API key', 'Documentation'], backgroundColor: weathrWiseSecondary);
Widget getPostmanCard = TechnologyCard(imagePath: getPostman(), title: 'Postman', desList: const ['Testing API key'], backgroundColor: weathrWiseSecondary);
Widget getFigmaCard(Color backgrounColor) => TechnologyCard(imagePath: getFigma(), title: 'Figma', desList: const ['User Interface Design'], backgroundColor: backgrounColor);
Widget getVScodeCard(Color backgrounColor) => TechnologyCard(imagePath: getVscode(), title: 'VS Code', desList: const ['Work Environment', 'Emulator'], backgroundColor: backgrounColor);
Widget getGitHubCard(Color backgrounColor) => TechnologyCard(imagePath: getGitHubBlack(), title: 'GitHub', desList: const ['Version control', 'Open source'], backgroundColor: backgrounColor);
Widget getFlutterCard(Color backgrounColor) => TechnologyCard(imagePath: getFlutter(), title: 'Flutter', desList: const ['Framework'], backgroundColor: backgrounColor);
Widget getFirebaseCard(Color backgrounColor) => TechnologyCard(imagePath: getFirebase(), title: 'Firebase', desList: const ['Backend'], backgroundColor: backgrounColor);

// ignore: must_be_immutable
class TechnologyCard extends StatelessWidget {
  String imagePath, title;
  List<String> desList;
  Color backgroundColor;
  TechnologyCard({super.key, required this.imagePath, required this.title, required this.desList, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardSize = screenWidth < 1250 ? screenWidth < 600 ? 160 : 200 : 250;
    final double iconSize = screenWidth < 1250 ? 40 : 64;
    final double fontTitle = screenWidth < 1280 ? screenWidth < 600 ? mobilecontentBoldFontSize : tabletH3FontSize : desktpH3FontSize;  
    final double fontDes = screenWidth < 1280 ? screenWidth < 600 ? mobileDescrptnFontSize : tabletDescrptnFontSize : desktpDescrptnFontSize;  

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      width: cardSize,
      height: cardSize,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: SmoothRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          smoothness: 0.9,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          title.contains('Open Weather') ? Image.asset(imagePath, height: iconSize,) : SvgPicture.asset(imagePath, height: iconSize,),
          const SizedBox(height: 12,),
          Text(title, style: headingSmall(fontTitle)),
          const SizedBox(height: 12,),
          for(int i = 0; i < desList.length; i++)
            Text(desList[i], style: description(fontDes))
        ],
      )
    );
  }
}

