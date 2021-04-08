import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_camera/application/camera_bloc/camera_bloc.dart';

class PhotoButton extends StatefulWidget {
  @override
  _PhotoButtonState createState() => _PhotoButtonState();
}

class _PhotoButtonState extends State<PhotoButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<CameraBloc>(context)
              .add(const CameraEvent.takePhoto());
        },
        child: BlocBuilder<CameraBloc, CameraState>(
          builder: (context, state) {
            if (state.sayingJoke) {
              return CircularProgressIndicator(
                backgroundColor: Theme.of(context).canvasColor,
              );
            }

            return ClipOval(
              child: Container(
                decoration: BoxDecoration(
                    color: state.takePhoto ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(75),
                    border: Border.all(
                        color: Colors.white.withAlpha(240), width: 5)),
              ),
            );
          },
        ),
      ),
    );
  }
}
