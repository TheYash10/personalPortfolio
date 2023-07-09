// ignore: file_names
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:flutter/material.dart';

void sendEmail(String fname, String lName, String number, String email,
    String message) async {
  // print(email);
  String username = 'yashjariwala121@gmail.com';
  String password = '@Yash121';

  final smtpServer = gmail(username, password);
  final message1 = Message()
    ..from = Address(username.toString())
    ..recipients.add(username)
    ..subject = 'Form Submission'
    ..text =
        'First Name: $fname\nLast Name: $lName\nMobile Number: $number\nEmail: $email\nMessage: $message';

  // final message1 = Message();
  // message1.subject = 'FeedBack form from portfolio';
  // message1.text =
  //     'First Name: $fname\nLast Name: $lName\nMobile Number: $number\nEmail: $email\nMessage: $message';
  // message1.from = Address(username.toString());
  // message1.recipients.add(username);

  try {
    final sendReport = await send(message1, smtpServer);
    print('Message sent: ${sendReport.toString()}');
  } catch (e) {
    // print(email);
    print('Error sending email: $e');
  }
}
