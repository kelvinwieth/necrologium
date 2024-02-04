import 'package:flutter/material.dart';
import 'package:necrologium/onboard/ui/views/onboard_view_01.dart';
import 'package:necrologium/onboard/ui/views/onboard_view_02.dart';
import 'package:necrologium/onboard/ui/views/onboard_view_03.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final controller = PageController();

  void pop() {
    controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void next() {
    controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: controller,
        children: [
          OnboardView01(onNext: next),
          OnboardView02(onPop: pop, onNext: next),
          OnboardView03(onPop: pop),
        ],
      ),
    );
  }
}
