
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:happy_camera/application/camera_bloc/camera_bloc.dart';
import 'package:happy_camera/core/constants/themes.dart';
import 'package:happy_camera/core/utilities/route_controller.dart';

class RootWidget extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CameraBloc>(
            create: (context) =>
                GetIt.instance<CameraBloc>()
            ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Smile Camera',
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        initialRoute: RouteController.routePermissions,
        onGenerateRoute: RouteController.gnerateRoute,
      ),
    );
  }
}
