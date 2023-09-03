import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/navigation_bar/devices/desktop_nav_bar.dart';
import '../../widgets/projects_list.dart';

class TbltDeveloperScreen extends StatelessWidget {
  const TbltDeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double groupHeight = 48;
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 64),
          child: DesktopNavBar(backgroundColor: primary,)
        ),
      ),
      backgroundColor: primary,

      body: ListView(
        children: [
          CenteredView(
            paddingHorizontal: 64,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: groupHeight,),

                Text('Specialize in creating intuitive and user-friendly user interfaces for websites and applications.', style: headingMedium(tabletH3FontSize)),

                const SizedBox(height: 24,),

                Text('The following is a selection of my Flutter and website projects', style: content(tabletcontentFontSize)),

                const SizedBox(height: groupHeight,),

                screenWidth < 880 ?  const ProjectListSmallScreen() : const ProjectList(),

                const SizedBox(height: groupHeight,),

                Center(child: Text(getCopyRight(), style: copyRight(14))),

                const SizedBox(height: groupHeight,),
              ],
            ),
          )
        ],
      )
    );
  }
}