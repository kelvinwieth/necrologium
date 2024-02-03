import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/texts/ne_display_text.dart';

class NeTextButton extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function()? onTap;

  const NeTextButton({
    super.key,
    required this.text,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: NeRegularText(text, color: color),
    );
  }
}
