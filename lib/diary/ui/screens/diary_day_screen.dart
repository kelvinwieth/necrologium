import 'package:flutter/material.dart';
import 'package:necrologium/diary/core/diary.dart';

class DiaryDayScreen extends StatelessWidget {
  final DiaryDay? day;

  const DiaryDayScreen({super.key, this.day});

  const DiaryDayScreen.fromDate(DateTime date, {super.key}) : day = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Placeholder(),
    );
  }
}
