import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/text_field_design.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Contact Me!",
            style: Theme.of(context).textTheme.headlineSmall!,
          ),
          Column(
            children: [
              (!Responsive.isMobileLarge(context) &&
                      !Responsive.isMobile(context))
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextFieldDesign(
                          width: 300,
                          hintText: "First Name",
                          icon: Icons.contact_page,
                          maxLine: 1,
                        ),
                        TextFieldDesign(
                          width: 300,
                          hintText: "Last Name",
                          icon: Icons.contact_page,
                          maxLine: 1,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextFieldDesign(
                          width: 600,
                          hintText: "First Name",
                          icon: Icons.contact_page,
                          maxLine: 1,
                        ),
                        TextFieldDesign(
                          width: 600,
                          hintText: "Last Name",
                          icon: Icons.contact_page,
                          maxLine: 1,
                        ),
                      ],
                    ),
              const TextFieldDesign(
                width: 600,
                hintText: "Email",
                icon: Icons.email,
                maxLine: 1,
              ),
              const TextFieldDesign(
                width: 600,
                hintText: "Mobile Number",
                icon: Icons.call,
                maxLine: 1,
              ),
              const TextFieldDesign(
                width: 600,
                hintText: "Type your feedback here...",
                icon: Icons.message,
                maxLine: 5,
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 2,
                    vertical: defaultPadding,
                  ),
                  backgroundColor: primaryColor,
                ),
                onPressed: () {},
                child: const Text(
                  "Send Feedback",
                  style: TextStyle(color: darkColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
