import 'package:flutter/material.dart';

import '../../../constants.dart';

class TextFieldDesign extends StatefulWidget {
  const TextFieldDesign({
    super.key,
    required this.width,
    required this.hintText,
    required this.icon,
    required this.maxLine,
  });
  final double width;
  final String hintText;
  final IconData icon;
  final int maxLine;

  @override
  State<TextFieldDesign> createState() => _TextFieldDesignState();
}

class _TextFieldDesignState extends State<TextFieldDesign> {
  // TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Padding(
        padding: const EdgeInsets.only(
          top: defaultPadding / 2,
          right: defaultPadding,
          bottom: defaultPadding / 2,
        ),
        child: TextField(
          // controller: _controller,
          maxLines: widget.maxLine,
          obscureText: false,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
            fillColor: secondaryColor,
            // filled: true,
            suffixIcon: Icon(widget.icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
