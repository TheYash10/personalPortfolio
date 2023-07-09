import 'package:flutter/material.dart';
import 'package:portfolio/models/Certificates.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class Certificate_card extends StatefulWidget {
  const Certificate_card({
    super.key,
    required this.certificate,
    required this.index,
  });
  final Certificate certificate;
  final int index;

  @override
  State<Certificate_card> createState() => _Certificate_cardState();
}

class _Certificate_cardState extends State<Certificate_card> {
  _launchUrl(String input) async {
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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              demo_Certificate[widget.index].imageUrl,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                demo_Certificate[widget.index].text,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(400)),
                  elevation: MaterialStateProperty.all(2.0),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.all(defaultPadding)),
                  backgroundColor: const MaterialStatePropertyAll(primaryColor),
                ),
                onPressed: () {
                  _launchUrl(demo_Certificate[widget.index].downloadUrl);
                },
                child: const Text(
                  "View Certificate",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
