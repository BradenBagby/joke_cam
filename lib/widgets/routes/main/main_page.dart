import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_camera/application/camera_bloc/camera_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CameraBloc,CameraState>(
      listener: (context,state){},listenWhen: (before,after){
        return !after.permissions;
      },
          child: Scaffold(
        body: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
