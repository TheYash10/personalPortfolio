import 'package:flutter/material.dart';

import '../../GmailService.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'components/text_field_design.dart';

TextEditingController fnameController = TextEditingController();
TextEditingController lnameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController messageController = TextEditingController();
TextEditingController numberController = TextEditingController();

class ContactPage extends StatefulWidget {
  const ContactPage({
    super.key,
  });

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  void submitForm() {
    String fName = fnameController.text;
    String lName = lnameController.text;
    String number = numberController.text;
    String email = emailController.text;
    String message = messageController.text;

    fnameController.clear();
    lnameController.clear();
    numberController.clear();
    emailController.clear();
    messageController.clear();

    // sendEmail(fName, lName, number, email, message);
  }

  @override
  void dispose() {
    fnameController.dispose();
    lnameController.dispose();
    numberController.dispose();
    emailController.dispose();
    messageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // bool isHovered = false;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      children: [
                        Expanded(
                          child: TextFieldDesign(
                            controller: fnameController,
                            width: maxWidth / 2,
                            hintText: "First Name",
                            icon: Icons.contact_page,
                            maxLine: 1,
                          ),
                        ),
                        Expanded(
                          child: TextFieldDesign(
                            controller: lnameController,
                            width: maxWidth / 2,
                            hintText: "Last Name",
                            icon: Icons.contact_page,
                            maxLine: 1,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFieldDesign(
                          controller: fnameController,
                          width: maxWidth,
                          hintText: "First Name",
                          icon: Icons.contact_page,
                          maxLine: 1,
                        ),
                        TextFieldDesign(
                          controller: lnameController,
                          width: maxWidth,
                          hintText: "Last Name",
                          icon: Icons.contact_page,
                          maxLine: 1,
                        ),
                      ],
                    ),
              TextFieldDesign(
                controller: emailController,
                width: maxWidth,
                hintText: "Email",
                icon: Icons.email,
                maxLine: 1,
              ),
              TextFieldDesign(
                controller: numberController,
                width: maxWidth,
                hintText: "Mobile Number",
                icon: Icons.call,
                maxLine: 1,
              ),
              TextFieldDesign(
                controller: messageController,
                width: maxWidth,
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
                onPressed: () {
                  submitForm();
                },
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
