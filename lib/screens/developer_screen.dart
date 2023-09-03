import 'package:flutter/material.dart';
import 'package:khan_farhan_02/screens/tablet/tablet_developer_project.dart';
import 'package:khan_farhan_02/screens/too_small_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'desktop/desktop_developer_project.dart';
import 'mobile/mobile_developer_project.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const DsktpDeveloperScreen(),
      tablet: (BuildContext context) => const TbltDeveloperScreen(),
      mobile: (BuildContext context) => const MbleDeveloperScreen(),
      watch: (BuildContext context) => const TooSmallScreen(),
    );
  }
}