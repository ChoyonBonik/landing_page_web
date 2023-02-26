import 'package:flutter/material.dart';
import 'package:landing_page_web/main.dart';
import 'package:landing_page_web/utils/responsiveLayout.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: LargeChild(),
        mediumScreen: MediumChild(),
        smallScreen: MediumChild());
  }
}


