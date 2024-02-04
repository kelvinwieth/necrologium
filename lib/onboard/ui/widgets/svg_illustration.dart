import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/styles/ne_themes.dart';

class SvgIllustration extends StatelessWidget {
  final String path;

  const SvgIllustration({super.key, required this.path});

  const SvgIllustration.waving({super.key})
      : path = 'assets/images/larry-waving.svg';

  const SvgIllustration.reading({super.key})
      : path = 'assets/images/larry-reading.svg';

  const SvgIllustration.waiting({super.key})
      : path = 'assets/images/larry-waiting.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: NeThemes.isDark
          ? context.colors.onBackground
          : context.colors.primaryContainer,
      child: SvgPicture.asset(path),
    );
  }
}
