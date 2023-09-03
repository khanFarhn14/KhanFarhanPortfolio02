import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/font_styles/font_style.dart';

class FillButton extends StatefulWidget {
  final String label;
  final double verticalPad, horizontalPad, fontSize;
  const FillButton({super.key, required this.label, required this.verticalPad, required this.horizontalPad, required this.fontSize});

  @override
  State<FillButton> createState() => _FillButtonState();
}

class _FillButtonState extends State<FillButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),

      child: AnimatedContainer(
        alignment: Alignment.center,
        width: _isHovered ? 170 : 180,
        duration: const Duration(milliseconds: 210),
        padding: EdgeInsets.symmetric(vertical: widget.verticalPad, horizontal: widget.horizontalPad),

        decoration: BoxDecoration(
          color: _isHovered ? secondary.withOpacity(0.8) : secondary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: contentBold(widget.fontSize).copyWith(color: primary)
          ),
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

primaryButtonStyle(double buttonFontSize){
  return ElevatedButton.styleFrom(
    backgroundColor: secondary,
    textStyle: contentBold(buttonFontSize),
    enableFeedback: true,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}

secondaryButtonStyle(Color borderColor){
  return ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: primary.withOpacity(0.2),
    side: BorderSide(color: borderColor, width: 2),
    enableFeedback: true,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100.0),
    ),
  );
}