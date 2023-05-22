import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/SideBar/Side_Menu/coding.dart';
import 'package:url_launcher/url_launcher.dart';

Coding getUrl = Coding();

class HomeBanner extends StatelessWidget {
  const HomeBanner({
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
                      _launchUrl(
                          "https://www.linkedin.com/in/yash-jariwala-70100524a");
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding,
                      ),
                      backgroundColor: primaryColor,
                    ),
                    child: const Text(
                      "Explore More",
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
