import 'package:flutter/material.dart';
import 'package:necrologium/diary/core/diary.dart';

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
    return Scaffold(
      appBar: AppBar(),
      body: const Placeholder(),
    );
  }
}
