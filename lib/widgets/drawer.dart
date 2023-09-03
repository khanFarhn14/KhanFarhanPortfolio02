import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/link.dart';
import '../utilities/constants/colors.dart';
import '../utilities/constants/constants.dart';
import '../utilities/font_styles/font_style.dart';
import 'navigation_bar/main_title.dart';

class DrawerMenu extends StatelessWidget {
  final ScrollController scrollController;

  const DrawerMenu({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    const double aboutMeScrollHeight = 800;
    const double connectScrollHeight = 2000;
    
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme:
          const IconThemeData(color: secondary),
      ),
      child: Drawer(
        // Drawer settings
        width: MediaQuery.of(context).size.width,
        backgroundColor: Colors.transparent,
        surfaceTintColor: null,
        elevation: 0,
        shadowColor: null,

        child: ListView(
          children: [
            Stack(
              children: [
                // Background Blur
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Container(
                    color: secondary.withOpacity(0.2),
                  ),
                ),

                // Content
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const MainTitle(fontSizeTitle: mobileH1FontSize, fontSizeDescription: mobileDescrptnFontSize, titleColor: primary, desColor: primaryDark,),
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close,color: primary),
                          )
                        ],
                      ),

                      const SizedBox(height: 48,),

                      const Divider(
                        thickness: 1,
                        color: primary
                      ),
                      
                      // Developer Projects
                      ListTile(
                        title: const Text("Developer Projects",),
                        titleTextStyle: headingMedium(mobileH2FontSize).copyWith(color: primary),
                        onTap: (){
                          context.go('/developer_projects');
                          Navigator.pop(context);
                        },
                        trailing: const Icon(Icons.arrow_forward_outlined, color: primary),
                      ),

                      const Divider(
                        thickness: 1,
                        color: primary
                      ),

                      // Connect
                      ListTile(
                        title: const Text("Connect",),
                        titleTextStyle: headingMedium(mobileH2FontSize).copyWith(color: primary),
                        onTap: (){
                          // context.go('/');
                          scrollController.animateTo(
                            connectScrollHeight,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.decelerate,
                          );
                          Navigator.pop(context);
                        },
                        trailing: const Icon(Icons.arrow_forward_outlined, color: primary),
                      ),

                      const Divider(
                        thickness: 1,
                        color: primary
                      ),

                      // About Me
                      ListTile(
                        title: const Text("About Me",),
                        titleTextStyle: headingMedium(mobileH2FontSize).copyWith(color: primary),
                        onTap: (){
                          scrollController.animateTo(
                            aboutMeScrollHeight,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.decelerate,
                          );
                          Navigator.pop(context);
                        },
                        trailing: const Icon(Icons.arrow_forward_outlined, color: primary),
                      ),

                      const Divider(
                        thickness: 1,
                        color: primary
                      ),


                      const SizedBox(height: 48,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: links.map((key) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Link(
                              target: LinkTarget.blank,
                              uri: key.link,
                              builder: (context, followLink) => IconButton(
                                onPressed: followLink,
                                icon: FaIcon(
                                  key.icon,
                                  color: primary,
                                  size: (42),
                                )
                              )
                            )
                          )
                        ).toList()
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}