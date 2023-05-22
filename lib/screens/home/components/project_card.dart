import 'package:flutter/material.dart';
import 'package:portfolio/models/GithubUrl.dart';

import '../../../constants.dart';
import '../../../models/projects.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.project,
    required this.maxLines,
    required this.index,
  });

  final Project project;
  final int maxLines;
  final int index;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  _lauchUrl(String input) async {
    try {
      String url = input;
      Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Spacer(),
          Text(
            widget.project.description!,
            maxLines: widget.maxLines,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () async {
              _lauchUrl(getUrl[widget.index].url);
            },
            child: TextButton(
              onPressed: null,
              child: const Text(
                "Know More >>",
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
