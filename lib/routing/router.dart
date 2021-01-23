import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_flutter/routing/route_names.dart';
import 'package:web_flutter/views/about/about_view.dart';
import 'package:web_flutter/views/episodes/episodes_view.dart';
import 'package:web_flutter/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());
    default:
  }
}

Route _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
