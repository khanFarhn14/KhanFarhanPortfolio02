import 'package:flutter/material.dart';
import 'package:khan_farhan_02/screens/too_small_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'desktop/desktop_hero_screen.dart';
import 'mobile/mobile_hero_screen.dart';
import 'tablet/tablet_hero_screen.dart';

class HeroScreen extends StatelessWidget {
  
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const DsktpHeroScreen(),
      tablet: (BuildContext context) => const TbltHeroScreen(),
      mobile: (BuildContext context) => const MbleHeroScreen(),
      watch: (BuildContext context) => const TooSmallScreen(),
    );
  }
}