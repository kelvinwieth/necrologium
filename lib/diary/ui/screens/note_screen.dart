import 'package:flutter/material.dart';
import 'package:necrologium/navigation/ui/custom_app_bar.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class NoteScreen extends StatefulWidget {
  final String? note;
  final DateTime date;

  const NoteScreen({super.key, this.note, required this.date});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const CustomAppBar(title: 'Diário'),
      body: const Placeholder(),
    );
  }
}
