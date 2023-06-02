import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_getx_ios_calculator/src/components/basic_button.dart';

import '../constants/button_color.dart';
import '../constants/button_icon_type.dart';

class EqualButton extends StatelessWidget {
  final void Function() onPressed;

  const EqualButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      color: ButtonColor.orange,
      onPressed: onPressed,
      type: Type.ROUND,
      child: ButtonIconType.equal,
    );
  }
}
