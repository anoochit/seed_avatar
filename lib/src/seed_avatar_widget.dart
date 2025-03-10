// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeedAvatarWidget extends StatelessWidget {
  const SeedAvatarWidget({
    super.key,
    required this.seed,
    required this.style,
    this.size = 256,
  });

  final String seed;
  final AvatarStyle style;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      'https://api.dicebear.com/9.x/${style.name.replaceAll('_', '-')}/svg?seed=$seed',
      width: size,
    );
  }
}

enum AvatarStyle {
  adventurer,
  adventurer_neutral,
  avataaars,
  avataaars_neutral,
  big_ears,
  big_ears_neutral,
  big_smile,
  bottts,
  bottts_neutral,
  croodles,
  croodles_neutral,
  dylan,
  initials,
  lorelei,
  lorelei_neutral,
  micah,
  notionists,
  notionists_neutral,
  shapes,
  thumbs,
}
