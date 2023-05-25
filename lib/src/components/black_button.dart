import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_color.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_size.dart';

enum Type { ROUND, FLAT }

class BlackButton extends StatelessWidget {
  final void Function()? onPressed;
  final Type type;
  final Widget child;
  const BlackButton(
      {super.key,
      required this.onPressed,
      required this.type,
      required this.child});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case Type.ROUND:
        return _circle();
      case Type.FLAT:
        return _flat();
    }
  }

  Widget _circle() {
    return SizedBox(
      width: ButtonSize.short,
      height: ButtonSize.short,
      child: CupertinoButton(
        borderRadius: BorderRadius.circular(100),
        padding: const EdgeInsets.all(16.0),
        color: ButtonColor.black,
        onPressed: () {},
        child: child,
      ),
    );
  }

  Widget _flat() {
    return SizedBox(
      width: ButtonSize.long,
      height: ButtonSize.short,
      child: CupertinoButton(
        borderRadius: BorderRadius.circular(100),
        padding: const EdgeInsets.all(16.0),
        color: ButtonColor.black,
        onPressed: () {},
        child: child,
      ),
    );
  }
}
