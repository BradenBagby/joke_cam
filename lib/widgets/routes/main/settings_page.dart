import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  PageController pageController;
  SettingsPage(this.pageController);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut);
          },
        ),
        centerTitle: true,
        title: const Text("About"),
        actions: [],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/smileyBackground.png"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "To use Joke Cam, click the camera bottom on the main screen. Make sure you have your volume turned up on your device. Wait for the funny joke to be spoken and the audience to laugh before an image is captured and saved to your device.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
