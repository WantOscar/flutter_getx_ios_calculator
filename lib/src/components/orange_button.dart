import 'package:flutter/cupertino.dart';

import '../constants/button_color.dart';
import '../constants/button_size.dart';

class OrangeButton extends StatelessWidget {
  final void Function() onPressed;
  final Icon iconFront;
  final Icon iconBack;
  final bool isClicked;
  const OrangeButton(
      {super.key,
      required this.onPressed,
      required this.iconFront,
      required this.iconBack,
      required this.isClicked});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _backBtn(),
        _frontBtn(),
      ],
    );
  }

  Widget _backBtn() {
    return SizedBox(
      width: ButtonSize.short,
      height: ButtonSize.short,
      child: CupertinoButton(
        color: ButtonColor.white,
        padding: const EdgeInsets.all(16.0),
        borderRadius: BorderRadius.circular(100),
        onPressed: onPressed,
        child: iconBack,
      ),
    );
  }

  Widget _frontBtn() {
    return AnimatedOpacity(
      opacity: (isClicked) ? 0.0 : 1.0,
      duration: const Duration(milliseconds: 300),
      child: SizedBox(
        width: ButtonSize.short,
        height: ButtonSize.short,
        child: CupertinoButton(
          pressedOpacity: null,
          color: ButtonColor.orange,
          padding: const EdgeInsets.all(8.0),
          borderRadius: BorderRadius.circular(100),
          onPressed: onPressed,
          child: iconFront,
        ),
      ),
    );
  }
}
