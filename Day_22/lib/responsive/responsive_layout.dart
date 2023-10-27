import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveLayout(
      {super.key, required this.mobile, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) =>
            constraints.maxWidth < mobileWidth ? mobile : desktop);
  }
}
