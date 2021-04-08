import 'package:flutter/material.dart';
import 'package:happy_camera/core/utilities/logger.dart';
import 'package:happy_camera/widgets/routes/main/main_page.dart';
import 'package:happy_camera/widgets/routes/permissions_page.dart';

///simmplifies routing
class RouteController {
  static const String routePermissions = "/"; //login page
  static const String routeMain = "/main"; //logged in home

  static Route<dynamic> gnerateRoute(RouteSettings settings) {
    Logger.log("Route: ${settings.name}");
    switch (settings.name) {
      case routeMain:
        return MaterialPageRoute(builder: (_) => MainPage());
      case routePermissions:
        return MaterialPageRoute(builder: (_) => PermissionsPage());
      default:
        throw UnimplementedError(); //should never happen
    }
  }
}
