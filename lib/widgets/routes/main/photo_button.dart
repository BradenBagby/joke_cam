import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_camera/application/camera_bloc/camera_bloc.dart';

class PhotoButton extends StatefulWidget {
  @override
  _PhotoButtonState createState() => _PhotoButtonState();
}

class _PhotoButtonState extends State<PhotoButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    _animationController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  void setupAnimation(Duration duration) {
    _animationController.reset();
    _animationController.duration = duration;
    _animationController.forward();
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
        child: BlocConsumer<CameraBloc, CameraState>(
          listener: (context, state) {
            //listener to start animation
            setupAnimation(state.jokeDuration);
          },
          listenWhen: (before, after) {
            return !before.takingPhoto && after.takingPhoto;
          },
          builder: (context, state) {
            if (state.takingPhoto) {
              return CircularProgressIndicator(
                backgroundColor: Theme.of(context).canvasColor,
                value: _animationController.value,
              );
            }

            return ClipOval(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
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
