import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainTitle extends StatelessWidget {
  final double fontSizeTitle;
  final double fontSizeDescription;
  final Color titleColor, desColor;
  const MainTitle({super.key, required this.fontSizeTitle, required this.fontSizeDescription, required this.titleColor, required this.desColor});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) { 
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: sizingInformation.deviceScreenType == DeviceScreenType.desktop ? CrossAxisAlignment.center: CrossAxisAlignment.start,
          children: [
            Text("Khan Farhan",style: TextStyle(fontFamily: 'Stolzl Bold', fontSize: fontSizeTitle, color: titleColor)),
            const SizedBox(height: 4),
            Text("Flutter Developer & UI Designer", style: TextStyle(fontFamily: 'Stolzl Book', fontSize:fontSizeDescription, color: desColor)),
          ],
        );
      }
    );
  }
}