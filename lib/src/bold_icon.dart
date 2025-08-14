// Copyright 2014 The Flutter Authors. All rights reserved.
// Modifications Copyright 2025 Mohamed Okaily (mo.okaily01@gmail.com)
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A graphical icon widget drawn with a glyph from a font described in
/// an [IconData], similar to Flutter’s built-in [Icon], but with an
/// extra [fontWeight] property to allow rendering **bold icons** or
/// matching the weight of surrounding text.
///
/// This is useful when:
///  * You want to make icons visually stronger to match bold text.
///  * You’re using a variable icon font (such as Material Symbols) and
///    want fine control over stroke thickness alongside [fill],
///    [weight], [grade], and [opticalSize].
///
/// All other behavior is identical to [Icon]:
///  * Honors ambient [IconThemeData] for size, color, opacity, and
///    variable font settings.
///  * Can be flipped automatically for right-to-left layouts if
///    [IconData.matchTextDirection] is true.
///  * Can be used anywhere an [Icon] is used.
///
/// The [fontWeight] parameter directly maps to the text rendering weight,
/// so any [FontWeight] constant is valid, from [FontWeight.w100] (thin)
/// to [FontWeight.w900] (black).
/// For example, to make an icon bold:
///
/// ```dart
/// const BoldIcon(
///   Icons.favorite,
///   fontWeight: FontWeight.bold,
///   color: Colors.red,
///   size: 32,
/// )
///
/// {@end-tool}
///
/// See also:
///
///  * [IconButton], for interactive icons.
///  * [Icons], for the list of available Material Icons for use with this class.
///  * [IconTheme], which provides ambient configuration for icons.
///  * [ImageIcon], for showing icons from [AssetImage]s or other [ImageProvider]s.
class BoldIcon extends StatelessWidget {
  /// Creates an icon.
  const BoldIcon(
      this.icon, {
        super.key,
        this.size,
        this.fill,
        this.weight,
        this.grade,
        this.opticalSize,
        this.color,
        this.shadows,
        this.semanticLabel,
        this.textDirection,
        this.applyTextScaling,
        this.blendMode,
        this.fontWeight,
      }) : assert(fill == null || (0.0 <= fill && fill <= 1.0)),
        assert(weight == null || (0.0 < weight)),
        assert(opticalSize == null || (0.0 < opticalSize));

  /// The thickness of the glyphs used to draw the text.
  ///
  /// Fonts are typically weighted on a 9-point scale, which, for historical
  /// reasons, uses the names 100 to 900. In Flutter, these are named `w100` to
  /// `w900` and have the following conventional meanings:
  ///
  /// Defaults to nearest [FontWeight]'s [FontWeight.bold].
  ///
  ///  * [w100]: Thin, the thinnest font weight.
  ///
  ///  * [w200]: Extra light.
  ///
  ///  * [w300]: Light.
  ///
  ///  * [w400]: Normal. The constant [FontWeight.normal] is an alias for this value.
  ///
  ///  * [w500]: Medium.
  ///
  ///  * [w600]: Semi-bold.
  ///
  ///  * [w700]: Bold. The constant [FontWeight.bold] is an alias for this value.
  ///
  ///  * [w800]: Extra-bold.
  ///
  ///  * [w900]: Black, the thickest font weight.
  ///
  /// For example, the font named "Roboto Medium" is typically exposed as a font
  /// with the name "Roboto" and the weight [FontWeight.w500].
  ///
  /// Some modern fonts allow the weight to be adjusted in arbitrary increments.
  /// See [FontVariation.weight] for details.
  final FontWeight? fontWeight;

  /// The icon to display. The available icons are described in [Icons].
  ///
  /// The icon can be null, in which case the widget will render as an empty
  /// space of the specified [size].
  final IconData? icon;

  /// The size of the icon in logical pixels.
  ///
  /// Icons occupy a square with width and height equal to size.
  ///
  /// Defaults to the nearest [IconTheme]'s [IconThemeData.size].
  ///
  /// If this [Icon] is being placed inside an [IconButton], then use
  /// [IconButton.iconSize] instead, so that the [IconButton] can make the splash
  /// area the appropriate size as well. The [IconButton] uses an [IconTheme] to
  /// pass down the size to the [Icon].
  final double? size;

  /// The fill for drawing the icon.
  ///
  /// Requires the underlying icon font to support the `FILL` [FontVariation]
  /// axis, otherwise has no effect. Variable font filenames often indicate
  /// the supported axes. Must be between 0.0 (unfilled) and 1.0 (filled),
  /// inclusive.
  ///
  /// Can be used to convey a state transition for animation or interaction.
  ///
  /// Defaults to nearest [IconTheme]'s [IconThemeData.fill].
  ///
  /// See also:
  ///  * [weight], for controlling stroke weight.
  ///  * [grade], for controlling stroke weight in a more granular way.
  ///  * [opticalSize], for controlling optical size.
  final double? fill;

  /// The stroke weight for drawing the icon.
  ///
  /// Requires the underlying icon font to support the `wght` [FontVariation]
  /// axis, otherwise has no effect. Variable font filenames often indicate
  /// the supported axes. Must be greater than 0.
  ///
  /// Defaults to nearest [IconTheme]'s [IconThemeData.weight].
  ///
  /// See also:
  ///  * [fill], for controlling fill.
  ///  * [grade], for controlling stroke weight in a more granular way.
  ///  * [opticalSize], for controlling optical size.
  ///  * https://fonts.google.com/knowledge/glossary/weight_axis
  final double? weight;

  /// The grade (granular stroke weight) for drawing the icon.
  ///
  /// Requires the underlying icon font to support the `GRAD` [FontVariation]
  /// axis, otherwise has no effect. Variable font filenames often indicate
  /// the supported axes. Can be negative.
  ///
  /// Grade and [weight] both affect a symbol's stroke weight (thickness), but
  /// grade has a smaller impact on the size of the symbol.
  ///
  /// Grade is also available in some text fonts. One can match grade levels
  /// between text and symbols for a harmonious visual effect. For example, if
  /// the text font has a -25 grade value, the symbols can match it with a
  /// suitable value, say -25.
  ///
  /// Defaults to nearest [IconTheme]'s [IconThemeData.grade].
  ///
  /// See also:
  ///  * [fill], for controlling fill.
  ///  * [weight], for controlling stroke weight in a less granular way.
  ///  * [opticalSize], for controlling optical size.
  ///  * https://fonts.google.com/knowledge/glossary/grade_axis
  final double? grade;

  /// The optical size for drawing the icon.
  ///
  /// Requires the underlying icon font to support the `opsz` [FontVariation]
  /// axis, otherwise has no effect. Variable font filenames often indicate
  /// the supported axes. Must be greater than 0.
  ///
  /// For an icon to look the same at different sizes, the stroke weight
  /// (thickness) must change as the icon size scales. Optical size offers a way
  /// to automatically adjust the stroke weight as icon size changes.
  ///
  /// Defaults to nearest [IconTheme]'s [IconThemeData.opticalSize].
  ///
  /// See also:
  ///  * [fill], for controlling fill.
  ///  * [weight], for controlling stroke weight.
  ///  * [grade], for controlling stroke weight in a more granular way.
  ///  * https://fonts.google.com/knowledge/glossary/optical_size_axis
  final double? opticalSize;

  /// The color to use when drawing the icon.
  ///
  /// Defaults to the nearest [IconTheme]'s [IconThemeData.color].
  ///
  /// The color (whether specified explicitly here or obtained from the
  /// [IconTheme]) will be further adjusted by the nearest [IconTheme]'s
  /// [IconThemeData.opacity].
  ///
  /// {@tool snippet}
  /// Typically, a Material Design color will be used, as follows:
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.blue.shade400,
  /// )
  /// ```
  /// {@end-tool}
  final Color? color;

  /// A list of [Shadow]s that will be painted underneath the icon.
  ///
  /// Multiple shadows are supported to replicate lighting from multiple light
  /// sources.
  ///
  /// Shadows must be in the same order for [Icon] to be considered as
  /// equivalent as order produces differing transparency.
  ///
  /// Defaults to the nearest [IconTheme]'s [IconThemeData.shadows].
  final List<Shadow>? shadows;

  /// Semantic label for the icon.
  ///
  /// Announced by assistive technologies (e.g TalkBack/VoiceOver).
  /// This label does not show in the UI.
  ///
  ///  * [SemanticsProperties.label], which is set to [semanticLabel] in the
  ///    underlying	 [Semantics] widget.
  final String? semanticLabel;

  /// The text direction to use for rendering the icon.
  ///
  /// If this is null, the ambient [Directionality] is used instead.
  ///
  /// Some icons follow the reading direction. For example, "back" buttons point
  /// left in left-to-right environments and right in right-to-left
  /// environments. Such icons have their [IconData.matchTextDirection] field
  /// set to true, and the [Icon] widget uses the [textDirection] to determine
  /// the orientation in which to draw the icon.
  ///
  /// This property has no effect if the [icon]'s [IconData.matchTextDirection]
  /// field is false, but for consistency a text direction value must always be
  /// specified, either directly using this property or using [Directionality].
  final TextDirection? textDirection;

  /// Whether to scale the size of this widget using the ambient [MediaQuery]'s [TextScaler].
  ///
  /// This is specially useful when you have an icon associated with a text, as
  /// scaling the text without scaling the icon would result in a confusing
  /// interface.
  ///
  /// Defaults to the nearest [IconTheme]'s
  /// [IconThemeData.applyTextScaling].
  final bool? applyTextScaling;

  /// The [BlendMode] to apply to the foreground of the icon.
  ///
  /// Defaults to [BlendMode.srcOver]
  final BlendMode? blendMode;

  @override
  Widget build(BuildContext context) {
    assert(this.textDirection != null || debugCheckHasDirectionality(context));
    final TextDirection textDirection = this.textDirection ?? Directionality.of(context);

    final IconThemeData iconTheme = IconTheme.of(context);

    final bool applyTextScaling = this.applyTextScaling ?? iconTheme.applyTextScaling ?? false;

    final double tentativeIconSize = size ?? iconTheme.size ?? kDefaultFontSize;

    final double iconSize =
    applyTextScaling
        ? MediaQuery.textScalerOf(context).scale(tentativeIconSize)
        : tentativeIconSize;

    final double? iconFill = fill ?? iconTheme.fill;

    final double? iconWeight = weight ?? iconTheme.weight;

    final double? iconGrade = grade ?? iconTheme.grade;

    final double? iconOpticalSize = opticalSize ?? iconTheme.opticalSize;

    final List<Shadow>? iconShadows = shadows ?? iconTheme.shadows;

    final IconData? icon = this.icon;
    if (icon == null) {
      return Semantics(label: semanticLabel, child: SizedBox(width: iconSize, height: iconSize));
    }

    final double iconOpacity = iconTheme.opacity ?? 1.0;
    Color? iconColor = color ?? iconTheme.color!;
    Paint? foreground;
    if (iconOpacity != 1.0) {
      iconColor = iconColor.withValues(alpha: iconColor.a * iconOpacity);
    }
    if (blendMode != null) {
      foreground =
      Paint()
        ..blendMode = blendMode!
        ..color = iconColor;
      // Cannot provide both a color and a foreground.
      iconColor = null;
    }

    final TextStyle fontStyle = TextStyle(
      fontVariations: <FontVariation>[
        if (iconFill != null) FontVariation('FILL', iconFill),
        if (iconWeight != null) FontVariation('wght', iconWeight),
        if (iconGrade != null) FontVariation('GRAD', iconGrade),
        if (iconOpticalSize != null) FontVariation('opsz', iconOpticalSize),
      ],
      inherit: false,
      color: iconColor,
      fontSize: iconSize,
      fontFamily: icon.fontFamily,
      package: icon.fontPackage,
      fontFamilyFallback: icon.fontFamilyFallback,
      shadows: iconShadows,
      height:
      1.0, // Makes sure the font's body is vertically centered within the iconSize x iconSize square.
      leadingDistribution: TextLeadingDistribution.even,
      foreground: foreground,
      fontWeight: fontWeight ?? FontWeight.bold,
    );

    Widget iconWidget = RichText(
      overflow: TextOverflow.visible, // Never clip.
      textDirection: textDirection, // Since we already fetched it for the assert...
      text: TextSpan(text: String.fromCharCode(icon.codePoint), style: fontStyle),
    );

    if (icon.matchTextDirection) {
      switch (textDirection) {
        case TextDirection.rtl:
          iconWidget = Transform(
            transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
            alignment: Alignment.center,
            transformHitTests: false,
            child: iconWidget,
          );
        case TextDirection.ltr:
          break;
      }
    }

    return Semantics(
      label: semanticLabel,
      child: ExcludeSemantics(
        child: SizedBox(width: iconSize, height: iconSize, child: Center(child: iconWidget)),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IconDataProperty('icon', icon, ifNull: '<empty>', showName: false));
    properties.add(DoubleProperty('size', size, defaultValue: null));
    properties.add(DoubleProperty('fill', fill, defaultValue: null));
    properties.add(DoubleProperty('weight', weight, defaultValue: null));
    properties.add(DoubleProperty('grade', grade, defaultValue: null));
    properties.add(DoubleProperty('opticalSize', opticalSize, defaultValue: null));
    properties.add(ColorProperty('color', color, defaultValue: null));
    properties.add(IterableProperty<Shadow>('shadows', shadows, defaultValue: null));
    properties.add(StringProperty('semanticLabel', semanticLabel, defaultValue: null));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection, defaultValue: null));
    properties.add(
      DiagnosticsProperty<bool>('applyTextScaling', applyTextScaling, defaultValue: null),
    );
  }
}
