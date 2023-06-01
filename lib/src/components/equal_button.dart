import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/button_color.dart';

class EqualButton extends StatelessWidget {
  final void Function() onPressed;
  final Icon iconFront;
  final bool isClicked;
  const EqualButton(
      {super.key,
      required this.onPressed,
      required this.iconFront,
      required this.isClicked});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: (isClicked) ? 0.0 : 1.0,
      duration: const Duration(milliseconds: 300),
      child: CupertinoButton(
        pressedOpacity: null,
        color: ButtonColor.orange,
        padding: const EdgeInsets.all(16.0),
        borderRadius: BorderRadius.circular(100),
        onPressed: onPressed,
        child: iconFront,
      ),
    );
  }
}
