import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utilities/constants/colors.dart';
import '../utilities/font_styles/font_style.dart';

class CopyButton extends StatefulWidget {
  final String copyText;
  const CopyButton({super.key, required this.copyText});

  @override
  State<CopyButton> createState() => _CopyButtonState();
}

class _CopyButtonState extends State<CopyButton> {
    bool _isCopied = false;

  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: widget.copyText));
    setState(() {
      _isCopied = true;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isCopied = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(_isCopied ? Icons.check : Icons.content_copy, color: primary, size: 14,),
          onPressed: _copyToClipboard,
          tooltip: 'Copy Text',
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
        ),
        const SizedBox(width: 2),
        Text(_isCopied ? 'Copied!' : '', style: cardDescription(10)),
      ],
    );
  }
}