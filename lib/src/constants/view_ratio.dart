import 'dart:io';

class ViewRatio {
  static Map<String, int> get ratio =>
      (Platform.isAndroid) ? {'top': 1, 'bottom': 2} : {'top': 1, 'bottom': 4};
}
