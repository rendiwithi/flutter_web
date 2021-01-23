import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_flutter/locator.dart';
import 'package:web_flutter/routing/route_names.dart';
import 'package:web_flutter/routing/router.dart';
import 'package:web_flutter/services/navigation_services.dart';
import 'package:web_flutter/views/home/home_content_desktop.dart';
import 'package:web_flutter/views/home/home_content_mobile.dart';
import 'package:web_flutter/widgets/centered_view/centered_view.dart';
import 'package:web_flutter/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:web_flutter/widgets/navigator_bar/navigation_bar.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationServices>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
