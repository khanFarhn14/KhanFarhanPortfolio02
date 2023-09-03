import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utilities/constants/colors.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/centered_view.dart';
import '../../widgets/navigation_bar/main_title.dart';

class MbleDesignerScreen extends StatelessWidget {
  const MbleDesignerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          toolbarHeight: 80,
          iconTheme: const IconThemeData(color: secondary),
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,

          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go('/'),
          ),

          title: const MainTitle(fontSizeTitle: mobileH1FontSize, fontSizeDescription: mobilecontentFontSize, titleColor: secondary, desColor: secondaryLight,),

          flexibleSpace: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: primary.withOpacity(0.1),
              ),
            ),
          ),
        ),
      ),

      backgroundColor: primary,

      body: CenteredView(
        paddingHorizontal: 24,
        child: ListView(
          children: [
            const SizedBox(height: 48,),
            Text("Page Under Construction", style: headingMedium(mobileH2FontSize)),
            const SizedBox(height: 24,),
            Center(child: Image.asset('assets/images/page_under_construction.gif')),
          ],
        ),
      )
    );
  }
}