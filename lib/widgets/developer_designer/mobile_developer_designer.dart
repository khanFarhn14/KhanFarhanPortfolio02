import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';

class MobileDeveloperDesigner extends StatefulWidget {
  const MobileDeveloperDesigner({super.key});

  @override
  State<MobileDeveloperDesigner> createState() => _MobileDeveloperDesignerState();
}

class _MobileDeveloperDesignerState extends State<MobileDeveloperDesigner> {
  final double heightOfCardandCarousal = 300;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: heightOfCardandCarousal,
            enlargeCenterPage: false,
            autoPlay: false,
            enableInfiniteScroll: false,
            viewportFraction: 0.8,
            padEnds: false,


            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            }    
          ),

          items: [
            GestureDetector(
              onTap: () => context.go('/developer_projects'),
              child: developerAndDesignerCard(getDeveloperIllustration(), 'Developer')
            ),
            GestureDetector(
              onTap: () => context.go('/designer_projects'),
              child: developerAndDesignerCard(getDesignerIllustration(), 'Designer')
            )
          ],
        ),
        
        DotsIndicator(
          dotsCount: 2,
          position: _currentIndex,
          decorator: const DotsDecorator(
            spacing: EdgeInsets.all(4),
            size: Size.square(6),
            activeSize: Size.square(8),
            color: primaryDark,
            activeColor: secondary,
          ),
        )
      ],
    );
  }
}

Widget developerAndDesignerCard(String path, String title){
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 260,
        height: 250,
        decoration: BoxDecoration(
          color: primaryDark,
          borderRadius: BorderRadius.circular(8)
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(path,width: 180,),
        ],
      ),

      Positioned(
        bottom: 32,
        child: Text(title, style: headingSmall(mobileH3FontSize))
      )
    ],
  );
}