import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';

class Section3 extends StatefulWidget {
  final TextStyle questionStyle;
  final double fontSize;
  const Section3({super.key, required this.questionStyle, required this.fontSize});

  @override
  State<Section3> createState() => _Section3State();
}

class _Section3State extends State<Section3> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(AboutMe().getQuestion(), style: widget.questionStyle, textAlign: TextAlign.center ,),),

        const SizedBox(height: 24,),

        Column(
          children: [
            for(int i = 0; i < AboutMe().getBulletPoint().length; i++)
              buildBulletPoint(AboutMe().getBulletPoint()[i], widget.fontSize),
          ],
        ),

        const SizedBox(height: 48,),

        Center(child: Text('Ready to embark on a collaborative journey?', style: widget.questionStyle, textAlign: TextAlign.center ,),),

        const SizedBox(height: 24,),
        
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text("Browse through ", style: content(widget.fontSize),),

            MouseRegion(

              cursor: SystemMouseCursors.click,

              onEnter: (event) {
                setState(() {
                  isHovered = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHovered = false;
                });
              },

                
              child: GestureDetector(
                onTap: () => context.go('/developer_projects'),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: isHovered ? 0.8 : 1.0,
                  child: Text('Project Section ', style: link(widget.fontSize)
                  ),
                ),
              )
            ),

            Text("my ", style: content(widget.fontSize),),
            Text("to ", style: content(widget.fontSize),),
            Text("see ", style: content(widget.fontSize),),
            Text("the ", style: content(widget.fontSize),),
            Text("perfect ", style: content(widget.fontSize),),
            Text("fusion ", style: content(widget.fontSize),),
            Text("of ", style: content(widget.fontSize),),
            Text("stunning ", style: content(widget.fontSize),),
            Text("visuals ", style: content(widget.fontSize),),
            Text("and ", style: content(widget.fontSize),),
            Text("impeccable functionality.\n", style: content(widget.fontSize),),
          ],
        ),

        Text('Get in touch today, and let\'s create something extraordinary together.', style: content(widget.fontSize), textAlign: TextAlign.center,)
      ],
    );
  }

}

Widget buildBulletPoint(String text, fontSize) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        '\u2022',
          style: TextStyle(fontSize: fontSize),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: content(fontSize),
          ),
        ),
      ],
    );
}