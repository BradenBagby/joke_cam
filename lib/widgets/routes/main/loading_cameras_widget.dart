import 'package:flutter/material.dart';

class LoadingCamerasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
