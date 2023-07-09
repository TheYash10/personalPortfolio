import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';
import 'components/animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    _launchUrl(String input) async {
      try {
        Uri uri = Uri.parse(input);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      } catch (e) {
        print(e);
      }
    }

    // Future<void> downloadCV(BuildContext context) async {
    //   final String cvFileName = 'RESUME.pdf'; // Replace with your CV file name
    //   final String cvAssetPath =
    //       'assets/Resume/RESUME.pdf'; // Replace with your CV file asset path

    //   try {
    //     if (await Permiss) {
    //       // Get the directory for temporary storage
    //       final Directory tempDir = await getTemporaryDirectory();
    //       final String tempPath = tempDir.path;

    //       // Copy the CV file from assets to temporary storage
    //       final File tempCV = File('$tempPath/$cvFileName');
    //       final ByteData assetData = await rootBundle.load(cvAssetPath);
    //       final List<int> bytes = assetData.buffer.asUint8List();
    //       await tempCV.writeAsBytes(bytes);
    //     }
    //   } catch (e) {
    //     print(e);
    //   }
    // }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Language Known",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Java",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "JavaScript",
        ),
        const Divider(),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Container(
          margin: const EdgeInsets.only(
            top: defaultPadding / 2,
          ),
          color: const Color(0xFF24242E),
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {
                  _launchUrl(
                      "https://www.linkedin.com/in/yash-jariwala-70100524a");
                },
                icon: SvgPicture.asset('assets/icons/linkedin.svg'),
              ),
              IconButton(
                onPressed: () {
                  _launchUrl("https://github.com/TheYash10");
                },
                icon: SvgPicture.asset('assets/icons/github.svg'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
