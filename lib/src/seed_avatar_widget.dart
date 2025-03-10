import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A widget that displays an avatar generated from a seed string.
///
/// The avatar is fetched from the DiceBear API based on the provided [seed]
/// and [style]. The [size] parameter controls the dimensions of the avatar.
class SeedAvatar extends StatelessWidget {
  /// Creates a [SeedAvatar].
  ///
  /// The [seed] and [style] parameters must not be null.
  const SeedAvatar({
    super.key,
    required this.seed,
    required this.style,
    this.size = 256,
  });

  /// The seed string used to generate the avatar.
  final String seed;

  /// The style of the avatar to generate.
  final AvatarStyle style;

  /// The size (width and height) of the avatar.
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      'https://api.dicebear.com/9.x/${style.name.replaceAll('_', '-')}/svg?seed=$seed',
      width: size,
    );
  }
}

/// Enum representing the available avatar styles.
enum AvatarStyle {
  /// The 'adventurer' avatar style.
  adventurer,

  /// The 'adventurer-neutral' avatar style.
  adventurer_neutral,

  /// The 'avataaars' avatar style.
  avataaars,

  /// The 'avataaars-neutral' avatar style.
  avataaars_neutral,

  /// The 'big-ears' avatar style.
  big_ears,

  /// The 'big-ears-neutral' avatar style.
  big_ears_neutral,

  /// The 'big-smile' avatar style.
  big_smile,

  /// The 'bottts' avatar style.
  bottts,

  /// The 'bottts-neutral' avatar style.
  bottts_neutral,

  /// The 'croodles' avatar style.
  croodles,

  /// The 'croodles-neutral' avatar style.
  croodles_neutral,

  /// The 'dylan' avatar style.
  dylan,

  /// The 'initials' avatar style.
  initials,

  /// The 'lorelei' avatar style.
  lorelei,

  /// The 'lorelei-neutral' avatar style.
  lorelei_neutral,

  /// The 'micah' avatar style.
  micah,

  /// The 'notionists' avatar style.
  notionists,

  /// The 'notionists-neutral' avatar style.
  notionists_neutral,

  /// The 'shapes' avatar style.
  shapes,

  /// The 'thumbs' avatar style.
  thumbs,
}
