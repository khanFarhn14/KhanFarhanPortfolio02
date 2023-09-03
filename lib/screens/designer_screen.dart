import 'package:flutter/material.dart';
import 'package:khan_farhan_02/screens/tablet/tablet_designer_project.dart';
import 'package:khan_farhan_02/screens/too_small_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'desktop/desktop_designer_project_page.dart';
import 'mobile/mobile_designer_project.dart';

class DesignerScreen extends StatelessWidget {
  const DesignerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const DsktpDesignerScreen(),
      tablet: (BuildContext context) => const TbltDesignerScreen(),
      mobile: (BuildContext context) => const MbleDesignerScreen(),
      watch: (BuildContext context) => const TooSmallScreen(),
    );
  }
}