import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_corner/smooth_corner.dart';
import 'package:url_launcher/link.dart';

import '../utilities/constants/colors.dart';
import '../utilities/font_styles/font_style.dart';
import 'buttons/fill_button.dart';
import 'buttons/link_button.dart';

class ProjectShowCase extends StatelessWidget {
  final Color backgroundColor, borderColor;
  final String projectImage1, title, date, descrptn, routeLink;
  final String? projectImage2;
  final Uri gitHubLink;
  const ProjectShowCase({super.key, required this.backgroundColor, required this.projectImage1, required this.title, required this.date, required this.descrptn, required this.routeLink, required this.gitHubLink, required this.projectImage2, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Font size
    final double titleFontSize = screenWidth < 1280 ? tabletH3FontSize : desktpH3FontSize;
    final double contentFontSize = screenWidth < 1280 ? tabletcontentFontSize : desktpcontentFontSize;

    final double borderRadius =  screenWidth < 1500 ? 16 : 24;
    final double sidePadding = screenWidth < 1280 ? 128 : 400;
    final double cardSize = ((screenWidth-sidePadding)/2)-50;
    const double groupSpace = 24;
    const double contentSpace = 8;

    return SizedBox(
      width: cardSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: cardSize,
            height: cardSize,
            color: backgroundColor,
            child: projectImage2 != null ? 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothClipRRect(
                  smoothness: 0.6,
                  side: BorderSide(color: borderColor, width: 2),
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Image.asset(projectImage1, height: cardSize-140,)
                ),
                SmoothClipRRect(
                  smoothness: 0.6,
                  side: BorderSide(color: borderColor, width: 2),
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Image.asset(projectImage2!, height: cardSize-140,)
                )
              ],
            ):
            SmoothClipRRect(
              smoothness: 0.9,
              side: BorderSide(color: borderColor, width: 2),
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.asset(projectImage1, height: cardSize-140,)
            )
          ),
          
          const SizedBox(height: groupSpace,),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: headingSmall(titleFontSize)),
    
              Link(
                target: LinkTarget.blank,
                uri: gitHubLink,
                builder: (context, followLink) => GestureDetector(
                  onTap: followLink,
                  child: LinkButton(fontSize: contentFontSize, icon: FontAwesomeIcons.github, label: 'Repo')
                )
              ),
            ],
    
          ),
    
          const SizedBox(height: contentSpace,),
    
          Text(date, style: content(contentFontSize),),
    
          const SizedBox(height: contentSpace,),
    
          Text(descrptn, style: content(contentFontSize)),
    
          const SizedBox(height: groupSpace,),
    
          GestureDetector(
            onTap: () => context.go(routeLink),
            child: FillButton(
              label: 'Explore More',
              verticalPad: 8,
              horizontalPad: 16,
              fontSize: contentFontSize
            ),
          )
        ],
      ),
    );
  }
}


class ProjectShowCaseSmallScreen extends StatelessWidget {
  final Color backgroundColor, borderColor;
  final String projectImage1, title, date, descrptn, routeLink;
  final String? projectImage2;
  final Uri gitHubLink;
  const ProjectShowCaseSmallScreen({
      super.key,
      required this.backgroundColor,
      required this.borderColor,
      required this.projectImage1,
      required this.title,
      required this.date,
      required this.descrptn,
      required this.routeLink,
      required this.gitHubLink,
      required this.projectImage2, 
    }
  );

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController(); 
    final double screenWidth = MediaQuery.of(context).size.width;
    const double imageHeight = 492;

    // Font size
    final double titleFontSize = screenWidth < 1280 ? screenWidth < 500 ? mobileH3FontSize : tabletH3FontSize : desktpH3FontSize;
    final double contentFontSize = screenWidth < 1280 ? screenWidth < 500 ? mobilecontentFontSize : tabletcontentFontSize : desktpcontentFontSize;

    final double borderRadius =  screenWidth < 1500 ? 16 : 24;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      color: backgroundColor,
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: headingMedium(titleFontSize)),

          const SizedBox(height: 24,),

          // Project image
          projectImage2 != null ? CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: imageHeight+20,
              enlargeCenterPage: false,
              autoPlay: false,
              enableInfiniteScroll: false,
              viewportFraction: 0.8,
            ),
            items: [
              SmoothClipRRect(
                  smoothness: 0.6,
                  side: BorderSide(color: borderColor, width: 2),
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Image.asset(projectImage1, height: imageHeight,)
                ),

                SmoothClipRRect(
                  smoothness: 0.6,
                  side: BorderSide(color: borderColor, width: 2),
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Image.asset(projectImage2!, height: imageHeight,)
                )
            ],
          ) : 
          Center(
            child: SmoothClipRRect(
              smoothness: 0.6,
              side: BorderSide(color: borderColor, width: 2),
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.asset(projectImage1, height: imageHeight,)
            ),
          ),

          const SizedBox(height: 24,),

          projectImage2 != null ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 2,
                    color: secondary
                  )
                ),
                child: IconButton(
                  icon: const Icon(Icons.keyboard_arrow_left, size: 24,),
                  onPressed: () => buttonCarouselController.previousPage(
                    duration: const Duration(milliseconds: 300), curve: Curves.easeInOut
                  ),
                ),
              ),

              const SizedBox(width: 8,),

              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 2,
                    color: secondary
                  )
                ),
                child: IconButton(
                  icon: const Icon(Icons.keyboard_arrow_right, size: 24,),
                  onPressed: () => buttonCarouselController.nextPage(
                    duration: const Duration(milliseconds: 300), curve: Curves.easeInOut
                  ),
                ),
              ),
            ],
          ) : const SizedBox(height: 0,),

          const SizedBox(height: 24,),

          // Date
          Text(date, style: content(contentFontSize)),

          const SizedBox(height: 8,),

          // Description
          Text(descrptn, style: content(contentFontSize)),

          const SizedBox(height: 24,),

          // Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go(routeLink);
                },
                style: primaryButtonStyle(contentFontSize),
                child: const Text('Explore More',)
              ),

              Link(
                target: LinkTarget.blank,
                uri: gitHubLink,
                builder: (context, followLink) => GestureDetector(
                  onTap: followLink,
                  child: LinkButton(fontSize: contentFontSize, icon: FontAwesomeIcons.github, label: 'Repo')
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}