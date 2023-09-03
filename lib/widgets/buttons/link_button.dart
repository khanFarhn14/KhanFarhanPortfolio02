import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/font_styles/font_style.dart';

class LinkButton extends StatefulWidget {
  final double fontSize;
  final IconData icon;
  final String label;
  const LinkButton({super.key,required this.fontSize, required this.icon, required this.label});

  @override
  State<LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
  final double screenWidth = MediaQuery.of(context).size.width;

  return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),

      child: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 280),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),

        decoration: BoxDecoration(
          color: screenWidth < 1280 ? Colors.transparent : primary,
          border: Border.all(width: 2, color: const Color(0xff1E1E1E)),
          boxShadow: _isHovered
          ? [
              const BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                offset: Offset(0, 20),
                blurRadius: 25,
                spreadRadius: -5,
              ),
            const BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.06),
                offset: Offset(0, 10),
                blurRadius: 10,
                spreadRadius: -5,
              ),
            ]
            : [],
          borderRadius: BorderRadius.circular(30),
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(widget.icon, size: 18, color: secondary,),

            const SizedBox(width: 4,),

            Text(
              widget.label,
              style: contentBold(widget.fontSize).copyWith(color: secondary)
            ),

            const SizedBox(width: 4,),

            const Icon(Icons.open_in_new, size: 18, color: secondary),
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