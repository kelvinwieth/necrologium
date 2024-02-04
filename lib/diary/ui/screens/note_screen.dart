import 'package:flutter/material.dart';
import 'package:necrologium/navigation/ui/custom_app_bar.dart';

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
    return const Scaffold(
      appBar: CustomAppBar(title: 'Diário'),
      body: Placeholder(),
    );
  }
}
