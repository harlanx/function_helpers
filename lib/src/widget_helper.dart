//Note: Wrap all related to material or widgets in comments if you want to run pure Dart or else when running,
//flutter objects will try to compile with the dependencies that require device and usually output a blank UI.
import 'package:flutter/material.dart';
import 'dart:math' as math;

extension GlobalKeyUtil on GlobalKey {
  ///Gets the offset and size on the widget relative to the global position (entire screen).
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject()!;
    var translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      return renderObject?.paintBounds.shift(Offset(translation.x, translation.y));
    } else {
      return null;
    }
  }
}

extension ColorUtil on Color {
  ///Darkens the color.
  ///Percent must be in between 0.0 to 1.0.
  ///Defaults to 0.1.
  Color darken([double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  ///Lightens the color.
  ///Percent must be in between 0.0 to 1.0.
  ///Defaults to 10.
  Color brighten([double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  static Color get random => Color((math.Random().nextDouble() * 0xFFFFFF).toInt());
}