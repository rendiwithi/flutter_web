import 'package:flutter/material.dart';
import 'package:web_flutter/locator.dart';
import 'package:web_flutter/services/navigation_services.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        locator<NavigationServices>().navigateTo(navigationPath);
      },
          child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
