import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/CertificateGridView.dart';
import 'contact_page.dart';

class Certificates extends StatelessWidget {
  const Certificates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Certificates",
          style: Theme.of(context).textTheme.headlineSmall!,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const CertificateGridView(),
        const SizedBox(
          height: defaultPadding,
        ),
        const ContactPage(),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
