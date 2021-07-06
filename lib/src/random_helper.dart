import 'dart:math' as math;
import 'dart:convert' as convert;

class RandomHelper {
  /// Generates a string with characters [aA-zZ] and [0-9]
  static String randString(int length) {
    const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return String.fromCharCodes(Iterable.generate(length, (_) => chars.codeUnitAt(math.Random().nextInt(chars.length))));
  }

  /// Generates a random crypto string.
  ///
  /// Note: Sometimes it generate with underscores and always end in "=="
  static String randCryptoString([int length = 8]) {
    var values = List<int>.generate(length, (i) => math.Random.secure().nextInt(255));
    return convert.base64UrlEncode(values);
  }

  static int randRangeInt(int min, int max) {
    if (min > max) throw RangeError('Minmimum value should be less than max');
    var result = min + math.Random().nextInt((max - min) + 1);
    return result;
  }

  static double randRangeDouble(double min, double max) {
    if (min > max) throw RangeError('Minmimum value should be less than max');
    var result = math.Random().nextDouble() * (min - max) + max;
    return double.parse(result.toStringAsFixed(2));
  }

  static bool randBoolean() => math.Random().nextBool();

  static String randSingleImage([List<String>? customImages]) {
    final images = [
      'lib/assets/images/sample_image_1.jpg',
      'lib/assets/images/sample_image_2.jpg',
      'lib/assets/images/sample_image_3.jpg',
      'lib/assets/images/sample_image_4.jpg',
      'lib/assets/images/sample_image_5.jpg',
      'lib/assets/images/sample_image_6.jpg',
    ];
    if (customImages != null) {
      if (customImages.length < 2) throw ('Provide at least 2 valid string path of images');
      return customImages[randRangeInt(0, customImages.length - 1)];
    } else {
      return images[randRangeInt(0, images.length - 1)];
    }
  }

  static List<String> randMultiImage(int count,[List<String>? customImages]) {
    final images = [
      'lib/assets/images/sample_image_1.jpg',
      'lib/assets/images/sample_image_2.jpg',
      'lib/assets/images/sample_image_3.jpg',
      'lib/assets/images/sample_image_4.jpg',
      'lib/assets/images/sample_image_5.jpg',
      'lib/assets/images/sample_image_6.jpg',
    ];

    if (customImages != null) {
      if (customImages.length < 2) throw ('Provide at least 2 valid string path of images');
      return List.generate(count, (index) => customImages[randRangeInt(0, customImages.length - 1)]);
    } else {
      return List.generate(count, (index) => images[randRangeInt(0, images.length - 1)]);
    }
  }
}
