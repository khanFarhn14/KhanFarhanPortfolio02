import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utilities/constants/constants.dart';
import 'card_hover.dart';

class DesktopDeveloperDesigner extends StatelessWidget {
  const DesktopDeveloperDesigner({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => context.go('/developer_projects'),
            child: CardHover(path: getDeveloperFull(), title: "Developer")
          )
        ),

        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => context.go('/designer_projects'),
            child: CardHover(path: getDesignerFull(), title: "Designer")
          )
        ),
        
      ],
    );
  }
}