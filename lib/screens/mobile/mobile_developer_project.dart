import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/drawer.dart';
import '../../widgets/navigation_bar/devices/mobile_nav_bar.dart';
import '../../widgets/projects_list.dart';

class MbleDeveloperScreen extends StatelessWidget {
  const MbleDeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionHeight = 48;
    const double groupHeight = 24;

    final ScrollController scrollController = ScrollController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MobileNavBar(backgroundColor : primary),
      ),
      
      backgroundColor: primary,

      endDrawer: DrawerMenu(scrollController: scrollController),

      body: ListView(
        children: [
          CenteredView(
            paddingHorizontal: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: sectionHeight,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('Specialize in creating intuitive and user-friendly user interfaces for websites and applications.', style: headingMedium(mobileH3FontSize)),
                ),

                const SizedBox(height: 12,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('The following is a selection of my Flutter and website projects', style: content(mobilecontentFontSize)),
                ),

                const SizedBox(height: sectionHeight,),

                const ProjectListSmallScreen(),

                const SizedBox(height: sectionHeight,),

                // Copyright
                Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(getCopyRight(), style: copyRight(10), textAlign: TextAlign.center,),
                )),

                const SizedBox(height: groupHeight,),
              ],
            ),
          )
        ],
      )
    );
  }
}