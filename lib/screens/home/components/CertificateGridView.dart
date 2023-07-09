import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/Certificate_card.dart';
import '../../../constants.dart';
import '../../../models/Certificates.dart';

class CertificateGridView extends StatelessWidget {
  const CertificateGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demo_Certificate.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => Certificate_card(
        certificate: demo_Certificate[index],
        index: index,
      ),
    );
  }
}
