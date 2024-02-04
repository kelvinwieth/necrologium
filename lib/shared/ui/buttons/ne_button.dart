import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class NeButton extends StatelessWidget {
  final String title;
  final IconData? leading;
  final Color backgroundColor;
  final Color textColor;
  final void Function()? onTap;

  const NeButton({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.textColor,
    this.leading,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leading != null) ...[
                Icon(leading!, size: 12, color: textColor),
                const HorizontalSpace(8),
              ],
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
