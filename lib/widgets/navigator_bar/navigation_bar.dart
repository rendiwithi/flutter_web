import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_flutter/widgets/navigator_bar/navigation_bar_mobile_desktop.dart';
import 'package:web_flutter/widgets/navigator_bar/navigation_bar_tablet_desktop.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobileDesktop(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}

