import 'package:flutter/material.dart';
import 'package:web_flutter/routing/route_names.dart';
import 'package:web_flutter/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:web_flutter/widgets/navigation_drawer/navigation_drawer_item.dart';


class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Drawer(
        child: Column(
          children: [
            NavigationDrawerHeader(),
            DrawerItem('Episodes', Icons.videocam, EpisodesRoute),
            DrawerItem('About', Icons.help, AboutRoute),
          ],
        ),
      ),
    );

    // return Container(
    //   width: 300,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     boxShadow: [
    //       BoxShadow(color: Colors.black12, blurRadius: 16)
    //     ]
    //   ),
    //   child: Column(children: [
    //     NavigationDrawerHeader(),
    //     DrawerItem('Episodes',Icons.videocam),
    //     DrawerItem('About',Icons.help),
    //   ],),
    // );
  }
}
