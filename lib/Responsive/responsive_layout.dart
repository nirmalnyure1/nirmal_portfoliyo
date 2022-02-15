import 'package:flutter/material.dart';
import 'package:portfoliyo/Responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const ResponsiveLayout(
      {Key? key,
      required this.mobileBody,
      required this.tabletBody,
      required this.desktopBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= mobileWidth) {
        return mobileBody;
      } else if (constraints.maxWidth >= mobileWidth &&
          constraints.maxWidth <= tabletWidth) {
        return tabletBody;
      } else {
        return desktopBody;
      }
    });
  }
}
