import 'package:flutter/material.dart';
import 'package:tumblrr_app/utils/size_config.dart';
import 'package:tumblrr_app/views/components/body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body()
    );
  }
}