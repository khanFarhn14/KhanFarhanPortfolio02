import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../utilities/constants/constants.dart';

class TabletDeveloperDesigner extends StatelessWidget {
  const TabletDeveloperDesigner({super.key});

  @override
  Widget build(BuildContext context) {
    final boxWidth = (((MediaQuery.of(context).size.width)-128)/2)-10;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        GestureDetector(
          onTap: () => context.go('/developer_projects'),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(getDeveloperFull(), width: boxWidth),
            ],
          ),
        ),

        GestureDetector(
          onTap: () => context.go('/designer_projects'),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(getDesignerFull(), width: boxWidth,),
            ],
          ),
        ),
      ],
    );
  }
}