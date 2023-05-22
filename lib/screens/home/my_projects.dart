import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../../constants.dart';
import '../../models/projects.dart';
import 'components/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headlineSmall!,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
            mobile: ProjectGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.3,
              maxLines: 14,
            ),
            mobileLarge: ProjectGridView(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              maxLines: 12,
            ),
            tablet: ProjectGridView(
              childAspectRatio: 0.5,
              maxLines: 13,
            ),
            desktop: ProjectGridView(
              maxLines: 8,
            ))
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
    required this.maxLines,
  });
  final int crossAxisCount;
  final double childAspectRatio;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demo_Projects.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_Projects[index],
        maxLines: maxLines,
        index: index,
      ),
    );
  }
}
