import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/button_color.dart';
import '../constants/button_size.dart';

enum Type { ROUND, FLAT }

class BasicButton extends StatelessWidget {
  final void Function()? onPressed;
  final Type type;
  final Widget child;

  const BasicButton(
      {super.key,
      this.onPressed,
      required this.type,
      required this.child,
      required Color color});

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
