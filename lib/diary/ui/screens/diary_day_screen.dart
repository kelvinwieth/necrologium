import 'package:flutter/material.dart';
import 'package:necrologium/navigation/ui/custom_app_bar.dart';

class DiaryDayScreen extends StatefulWidget {
  final String? note;
  final DateTime date;

  const DiaryDayScreen({super.key, this.note, required this.date});

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
