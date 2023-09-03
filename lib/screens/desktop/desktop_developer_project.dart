import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/navigation_bar/devices/desktop_nav_bar.dart';
import '../../widgets/projects_list.dart';

class DsktpDeveloperScreen extends StatelessWidget {
  const DsktpDeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 48,),

                Text('Specialize in creating intuitive and user-friendly user interfaces for websites and applications.', style: headingMedium(desktpH2FontSize)),

                const SizedBox(height: 24,),

                Text('The following is a selection of my Flutter and website projects', style: content(desktpcontentFontSize)),

                const SizedBox(height: groupHeight,),

                const ProjectList(),
                
                const SizedBox(height: 74,),

                Center(child: Text(getCopyRight(), style: copyRight(14))),

                const SizedBox(height: 48,),
              ],
            ),
          )
        ],
      )
    );
  }
}