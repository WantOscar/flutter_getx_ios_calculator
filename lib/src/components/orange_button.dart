import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/button_color.dart';
import '../constants/button_size.dart';

class OrnageButton extends StatefulWidget {
  final void Function()? onPressed;
  final Icon icon;
  final Icon activeIcon;
  final bool isClick;
  const OrnageButton(
      {super.key,
      this.onPressed,
      required this.icon,
      required this.activeIcon,
      required this.isClick});

  @override
  State<OrnageButton> createState() => _OrnageButtonState();
}

class _OrnageButtonState extends State<OrnageButton> {
  void _toggle() {
    setState(() {
      widget.isClick != widget.isClick;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _backward(),
        _forward(),
      ],
    );
  }

  Widget _forward() {
    return AnimatedOpacity(
      opacity: (widget.isClick) ? 1.0 : 0.0,
      duration: const Duration(seconds: 1),
      child: SizedBox(
        width: ButtonSize.short,
        height: ButtonSize.short,
        child: CupertinoButton(
          pressedOpacity: 1.0,
          borderRadius: BorderRadius.circular(100),
          padding: const EdgeInsets.all(16.0),
          color: ButtonColor.orange,
          onPressed: () {
            _toggle();
            widget.onPressed;
          },
          child: widget.icon,
        ),
      ),
    );
  }

  Widget _backward() {
    return SizedBox(
      width: ButtonSize.short,
      height: ButtonSize.short,
      child: CupertinoButton(
        pressedOpacity: 1.0,
        borderRadius: BorderRadius.circular(100),
        padding: const EdgeInsets.all(16.0),
        color: ButtonColor.white,
        onPressed: () {
          _toggle();
          widget.onPressed;
        },
        child: widget.activeIcon,
      ),
    );
  }
}