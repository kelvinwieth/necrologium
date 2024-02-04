import 'package:flutter/material.dart';
import 'package:necrologium/diary/core/diary.dart';
import 'package:necrologium/navigation/ui/custom_app_bar.dart';

class DiaryDayScreen extends StatefulWidget {
  final String? id;
  final DiaryDay? day;

  const DiaryDayScreen({super.key, this.id, this.day});

  @override
  State<DiaryDayScreen> createState() => _DiaryDayScreenState();
}

class _DiaryDayScreenState extends State<DiaryDayScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Diário'),
      body: Placeholder(),
    );
  }
}
