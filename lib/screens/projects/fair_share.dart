import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../desktop/desktop_fair_share.dart';
import '../mobile/mobile_fair_share.dart';
import '../tablet/tablet_fair_share.dart';
import '../too_small_screen.dart';

class FairShare extends StatelessWidget {
  const FairShare({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const DesktopFairShare(),
      tablet: (BuildContext context) => const TabletFairShare(),
      mobile: (BuildContext context) => const MobileFairShare(),
      watch: (BuildContext context) => const TooSmallScreen(),
    );
  }
}