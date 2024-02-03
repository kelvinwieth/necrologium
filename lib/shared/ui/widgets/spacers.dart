import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  final double value;

  const VerticalSpace(this.value, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: value);
}

class HorizontalSpace extends StatelessWidget {
  final double value;

  const HorizontalSpace(this.value, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(width: value);
}
