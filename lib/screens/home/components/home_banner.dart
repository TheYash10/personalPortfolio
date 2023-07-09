import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({
    super.key,
  });

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    Future<void> _downloadCV() async {
      // Example URL launcher for downloading a file
      if (await canLaunchUrl(Uri.parse(
          'https://github.com/TheYash10/portfolio/blob/master/YASH%20RESUME-1%20(3).pdf'))) {
        await launchUrl(Uri.parse(
            'https://github.com/TheYash10/portfolio/blob/master/YASH%20RESUME-1%20(3).pdf'));
      } else {
        throw 'Could not launch ';
      }
    }

    void _download() async {
      // Get the downloads directory path
      Directory? downloadsDirectory = await getDownloadsDirectory();

      // Define the file name and path
      String fileName = 'cv.pdf'; // Replace with the actual file name
      String filePath = '${downloadsDirectory?.path}/$fileName';

      // Download the file
      HttpClient httpClient = HttpClient();
      File file = File(filePath);

      try {
        // Open a connection to the URL of the CV file
        HttpClientRequest request = await httpClient.getUrl(
          Uri.parse(
            'https://drive.google.com/file/d/1UcuRuPR7wTx781rrVpg0vI82VgP1s_DX/view?usp=drive_link',
          ),
        ); // Replace with the actual URL of your CV file

        // Get the response and save it to the file
        HttpClientResponse response = await request.close();
        await response.pipe(file.openWrite());

        // Show a success message or perform any other desired actions
        if (kDebugMode) {
          print('CV downloaded successfully');
        }
      } catch (e) {
        // Handle any errors that occur during the download process
        if (kDebugMode) {
          print('Error downloading CV: $e');
        }
      } finally {
        // Close the HTTP client and file
        httpClient.close();
      }
    }

    return AspectRatio(
      aspectRatio: !Responsive.isMobile(context) ? 3 : 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Me!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.titleSmall!,
                  child: Row(
                    children: [
                      const Text(
                        "I'm ",
                      ),
                      AnimatedTextKit(animatedTexts: [
                        TyperAnimatedText(
                          "a Flutter Developer",
                          speed: const Duration(milliseconds: 60),
                        ),
                        TyperAnimatedText(
                          "a Mobile App Developer",
                          speed: const Duration(milliseconds: 60),
                        ),
                        TyperAnimatedText(
                          "a Competitive Coder",
                          speed: const Duration(milliseconds: 60),
                        ),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                !Responsive.isMobileLarge(context)
                    ? Container(
                        width: 500,
                        child: Text(
                          "Determined and Knowledgeable Flutter developer who can think outside the box.A new Developer who is going to graduate soon and who enjoys working with all types of personalities.Seeking the chance to architect new Android/IOS applications.",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      )
                    : Expanded(
                        child: Container(
                          width: 400,
                          child: Text(
                            "Determined and Knowledgeable Flutter developer who can think outside the box.A new Developer who is going to graduate soon and who enjoys working with all types of personalities.Seeking the chance to architect new Android/IOS applications.",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      Responsive.isDesktop(context)
                          ? _downloadCV()
                          : _download();
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding,
                      ),
                      backgroundColor: primaryColor,
                    ),
                    child: const Text(
                      "DOWNLOAD CV",
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
