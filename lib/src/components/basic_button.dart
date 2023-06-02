import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/button_color.dart';
import '../constants/button_size.dart';

enum Type { ROUND, FLAT }

class BasicButton extends StatelessWidget {
  final Function() onPressed;
  final Type? type;
  final Color color;
  final Widget child;

  const BasicButton(
      {super.key,
      required this.onPressed,
      this.type = Type.ROUND,
      required this.child,
      required this.color});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case Type.ROUND:
        // return _circle();
        return _btn(ButtonSize.short, ButtonSize.short);
      case Type.FLAT:
        // return _flat();
        return _btn(ButtonSize.short, ButtonSize.long);
      default:
        return Container();
    }
  }

  Widget _btn(double height, double width) {
    return SizedBox(
      width: width,
      height: height,
      child: CupertinoButton(
        color: color,
        padding: const EdgeInsets.all(8.0),
        borderRadius: BorderRadius.circular(100),
        onPressed: onPressed,
        child: child,
      ),
    );
  }

  // Widget _circle() {
  //   return SizedBox(
  //     width: ButtonSize.short,
  //     height: ButtonSize.short,
  //     child: CupertinoButton(
  //       borderRadius: BorderRadius.circular(100),
  //       padding: const EdgeInsets.all(16.0),
  //       color: ButtonColor.black,
  //       onPressed: () {},
  //       child: child,
  //     ),
  //   );
  // }

  // Widget _flat() {
  //   return SizedBox(
  //     width: ButtonSize.long,
  //     height: ButtonSize.short,
  //     child: CupertinoButton(
  //       borderRadius: BorderRadius.circular(100),
  //       padding: const EdgeInsets.all(16.0),
  //       color: ButtonColor.black,
  //       onPressed: () {},
  //       child: child,
  //     ),
  //   );
  // }
}
