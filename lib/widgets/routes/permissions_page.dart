import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_camera/application/camera_bloc/camera_bloc.dart';
import 'package:happy_camera/core/utilities/route_controller.dart';

class PermissionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CameraBloc, CameraState>(
      listener: (context, state) {
        if (state.permissions) {
          Navigator.of(context).pushReplacementNamed(RouteController.routeMain);
        }
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  "assets/images/smiley.png",
                  fit: BoxFit.contain,
                )),
            const SizedBox(height: 16),
            Text(
              "Joke Cam needs access to your camera and photo library to continue!",
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<CameraBloc>(context)
                    .add(const CameraEvent.checkPermissions(ask: true));
              },
              child: const Text("Got It"),
            ),
          ],
        ),
      ),
    );
  }
}
