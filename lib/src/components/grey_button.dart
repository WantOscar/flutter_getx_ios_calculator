import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_ios_calculator/src/components/basic_button.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_icon_type.dart';
import 'package:get/get.dart';

import '../constants/button_color.dart';
import '../constants/button_size.dart';
import '../controller/calculator_controller.dart';

enum GreyBtnType { ALLCLEAR, PLUSNMINUS, PERCENT }

class GreyButton extends GetView<CalculatorController> {
  final GreyBtnType type;
  final Function() onPressed;
  const GreyButton({Key? key, required this.onPressed, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case GreyBtnType.ALLCLEAR:
        return _btnAllClear();
      case GreyBtnType.PLUSNMINUS:
        return _btnETC(ButtonIconType.plusAndMinus);
      case GreyBtnType.PERCENT:
        return _btnETC(ButtonIconType.percent);
    }
  }

  Widget _btnAllClear() {
    return SizedBox(
      width: ButtonSize.short,
      height: ButtonSize.short,
      child: Obx(
        () => CupertinoButton(
          color: ButtonColor.grey,
          padding: const EdgeInsets.all(8.0),
          borderRadius: BorderRadius.circular(100),
          onPressed: onPressed,
          child: (controller.result == '0')
              ? ButtonIconType.allClear
              : ButtonIconType.clear,
        ),
      ),
    );
  }

  Widget _btnETC(Icon icon) {
    return BasicButton(
      type: Type.ROUND,
      color: ButtonColor.grey,
      onPressed: onPressed,
      child: icon,
    );
  }
}
