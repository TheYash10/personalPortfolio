import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/recommendation.dart';
import 'components/recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommenadation.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    image: demo_recommenadation[index].image,
                    name: demo_recommenadation[index].name,
                    source: demo_recommenadation[index].source,
                    text: demo_recommenadation[index].text,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
