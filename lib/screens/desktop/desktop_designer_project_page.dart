import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/navigation_bar/devices/desktop_nav_bar.dart';

class DsktpDesignerScreen extends StatelessWidget {
  const DsktpDesignerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 190),
          child: DesktopNavBar(backgroundColor: primary,)
        ),
      ),

      backgroundColor: primary,

      body: CenteredView(
        paddingHorizontal: 200,
        child: ListView(
          children: [
            Center(child: Text("Page Under Construction", style: headingMedium(desktpH2FontSize)),),
            const SizedBox(height: 48,),
            Center(child: Image.asset('assets/images/page_under_construction.gif')),
          ],
        ),
      )
    );
  }
}