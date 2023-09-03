import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/font_styles/font_style.dart';

class OutLinedButton extends StatefulWidget {
  final String label;
  final double verticalPad, horizontalPad, fontSize;
  final IconData icon;
  const OutLinedButton({super.key, required this.label, required this.verticalPad, required this.horizontalPad, required this.fontSize, required this.icon});

  @override
  State<OutLinedButton> createState() => _OutLinedButtonState();
}

class _OutLinedButtonState extends State<OutLinedButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
  return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 280),
        padding: EdgeInsets.symmetric(vertical: widget.verticalPad, horizontal: widget.horizontalPad),

        decoration: ShapeDecoration(
          color: _isHovered ? primaryDark : primaryDark.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: secondary),
            borderRadius: BorderRadius.circular(30)

          )
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.label,
              style: contentBold(widget.fontSize).copyWith(color: secondary)
            ),

            const SizedBox(width: 8,),

            Icon(widget.icon, size: 24, color: secondary),
          ],
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}