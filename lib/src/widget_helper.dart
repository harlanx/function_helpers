//Note: Wrap all related to material or widgets in comments if you want to run pure Dart or else when running,
//flutter objects will try to compile with the dependencies that require device and usually output a blank UI.
import 'package:flutter/material.dart';

extension GlobalKeyUtil on GlobalKey {
  ///Gets the offset and size on the widget relative to the global position.
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
