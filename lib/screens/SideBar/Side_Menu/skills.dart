import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'components/animated_circular_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: AnimatedCircularProgressIndicator(
            percentage: 0.8,
            label: "Flutter",
          ),
        ),
        SizedBox(
          width: defaultPadding,
        ),
        Expanded(
          child: AnimatedCircularProgressIndicator(
            percentage: 0.7,
            label: "DSA",
          ),
        ),
        SizedBox(
          width: defaultPadding,
        ),
        Expanded(
          child: AnimatedCircularProgressIndicator(
            percentage: 0.5,
            label: "FireBase",
          ),
        ),
      ],
    );
  }
}
