import 'package:flutter/material.dart';
import 'package:web_flutter/routing/route_names.dart';
import 'package:web_flutter/widgets/navigator_bar/navbar_item.dart';
import 'package:web_flutter/widgets/navigator_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Episodes', EpisodesRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', AboutRoute)
            ],
          )
        ],
      ),
    );
  }
}
