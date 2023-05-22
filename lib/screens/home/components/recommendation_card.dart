import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.image,
    required this.name,
    required this.source,
    required this.text,
  });
  final Widget? image;
  final String? name, source, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image!,
          Text(
            name!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(source!),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(text!)
        ],
      ),
    );
  }
}
