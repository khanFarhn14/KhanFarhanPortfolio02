import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../utilities/font_styles/font_style.dart';
import '../../widgets/centered_view.dart';

class TbltDesignerScreen extends StatelessWidget {
  const TbltDesignerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 54 ,),
          // child: TabletNavBar(),
        ),
      ),

      backgroundColor: primary,

      body: CenteredView(

        paddingHorizontal: 64,
        child: ListView(
          children: [
            const SizedBox(height: 48,),
            Text("Page Under Construction", style: headingMedium(tabletH3FontSize)),
            const SizedBox(height: 24,),
            Center(child: Image.asset('assets/images/page_under_construction.gif')),
          ],
        ),
      )
    );
  }
}