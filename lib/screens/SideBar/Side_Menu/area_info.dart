import 'package:flutter/material.dart';

import '../../../constants.dart';

class AreaInfo extends StatelessWidget {
  final String? title;
  final String? text;
  const AreaInfo({super.key, required this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          ),
        ],
      ),
    );
  }
}
