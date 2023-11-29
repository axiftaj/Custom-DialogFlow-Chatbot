import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/view/chatbot_view/chatbot_view.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      timer.cancel();
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) => const ChatBotView()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: // Load a Lottie file from your assets
            Lottie.asset('assets/splash.json', height: 200, width: 200),
      ),
    );
  }
}
