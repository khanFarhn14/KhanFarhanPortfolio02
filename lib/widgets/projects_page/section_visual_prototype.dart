import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/font_styles/font_style.dart';
import '../buttons/link_button.dart';

class SectionVisualPrototype extends StatelessWidget {
  final String imagePath1;
  final String? imagePath2;
  final Uri gitHubLink;
  final Uri? figmaLink; 
  const SectionVisualPrototype({super.key, required this.imagePath1, required this.imagePath2, required this.gitHubLink, this.figmaLink});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontTitle = screenWidth < 1280 ? tabletH2FontSize : desktpH2FontSize;
    final double fontContent = screenWidth < 1280 ? tabletcontentFontSize : desktpcontentFontSize;
    final double imageHeight = screenWidth < 800 ? 400: 650;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Visual Prototype', style: headingMedium(fontTitle)),

        const SizedBox(height: 48,),

        imagePath2 != null ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagePath1, height: imageHeight,),
            Image.asset(imagePath2!, height: imageHeight,),
          ],
        ): Image.asset(imagePath1),

        const SizedBox(height: 48,),

        figmaLink != null ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Link(
              target: LinkTarget.blank,
              uri: gitHubLink,
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: LinkButton(fontSize: fontContent , icon: FontAwesomeIcons.github, label: 'Repo')
              )
            ),

            Link(
              target: LinkTarget.blank,
              uri: figmaLink,
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: LinkButton(
                  fontSize: fontContent ,
                  icon: FontAwesomeIcons.figma,
                  label: 'figma'
                )
              )
            )
          ],
        ) :
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Link(
              target: LinkTarget.blank,
              uri: gitHubLink,
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: LinkButton(fontSize: fontContent , icon: FontAwesomeIcons.github, label: 'Repo')
              )
            ),
          ],
        )
      ],
    );
  }
}


class SectionVisualPrototypeSmall extends StatelessWidget {
  final String imagePath1;
  final String? imagePath2;
  final Uri gitHubLink;
  final Uri? figmaLink;
  const SectionVisualPrototypeSmall({super.key, required this.imagePath1, required this.imagePath2, required this.gitHubLink, this.figmaLink});

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController(); 
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontTitle = screenWidth < 1280 ? tabletH2FontSize : desktpH2FontSize;
    final double fontContent = screenWidth < 1280 ? tabletcontentFontSize : desktpcontentFontSize;
    final double imageHeight = screenWidth < 800 ? 400: 650;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Visual Prototype', style: screenWidth < 600 ? headingSmall(mobileH3FontSize) : headingMedium(fontTitle)),

        const SizedBox(height: 48,),

        imagePath2 != null ? CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: imageHeight+20,
              enlargeCenterPage: false,
              autoPlay: false,
              enableInfiniteScroll: false,
              viewportFraction: 0.8,
            ),
            items: [
                Image.asset(imagePath1),
                Image.asset(imagePath2!)
            ],
          ) : 
          Center(
            child: Image.asset(imagePath1)
          ),

        const SizedBox(height: 48,),

        imagePath2 != null ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Link(
              target: LinkTarget.blank,
              uri: gitHubLink,
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: LinkButton(
                  fontSize: fontContent,
                  icon: FontAwesomeIcons.github,
                  label: 'Repo'
                )
              )
            ),
            
            Row(
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
              ),
          ],
        )
        : Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Link(
              target: LinkTarget.blank,
              uri: gitHubLink,
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: LinkButton(
                  fontSize: fontContent,
                  icon: FontAwesomeIcons.github,
                  label: 'Repo'
                )
              )
            ),

            figmaLink != null ? Link(
              target: LinkTarget.blank,
              uri: figmaLink,
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: LinkButton(
                  fontSize: fontContent ,
                  icon: FontAwesomeIcons.figma,
                  label: 'figma'
                )
              )
            ) : Container()
          ],
        )
      ],
    );
  }
}