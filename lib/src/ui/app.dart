import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ios_calculator/src/components/black_button.dart';
import 'package:flutter_getx_ios_calculator/src/components/equal_button.dart';
import 'package:flutter_getx_ios_calculator/src/components/grey_button.dart';
import 'package:flutter_getx_ios_calculator/src/components/orange_button.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_color.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_icon_type.dart';
import 'package:get/get.dart';

import '../constants/view_ratio.dart';
import '../controller/calculator_controller.dart';

class App extends GetView<CalculatorController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: ViewRatio.ratio['top']!,
            child: _result(),
          ),
          Flexible(
            flex: ViewRatio.ratio['bottom']!,
            child: _buttons(),
          ),
        ],
      ),
    );
  }

  Widget _result() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.bottomRight,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Obx(
            () => SelectableText(
              controller.result,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _firstRow(),
        _secondRow(),
        _thirdRow(),
        _fourthRow(),
        _fifthRow(),
      ],
    );
  }

  Widget _firstRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GreyButton(
            type: GreyBtnType.ALLCLEAR,
            onPressed: controller.allClear,
          ),
          GreyButton(
            type: GreyBtnType.PLUSNMINUS,
            onPressed: controller.convert,
          ),
          GreyButton(
            type: GreyBtnType.PERCENT,
            onPressed: controller.changeToPercent,
          ),
          Obx(
            () => OrangeButton(
              iconFront: ButtonIconType.divide,
              iconBack: ButtonIconType.divideReverse,
              isClicked: controller.divide,
              onPressed: controller.pushDivideBtn,
            ),
          ),
        ],
      ),
    );
  }

  Widget _secondRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlackButton(
            type: BlackBtnType.SEVEN,
            onPressed: () => controller.pushNumberBtn('7'),
          ),
          BlackButton(
            type: BlackBtnType.EIGHT,
            onPressed: () => controller.pushNumberBtn('8'),
          ),
          BlackButton(
            type: BlackBtnType.NINE,
            onPressed: () => controller.pushNumberBtn('9'),
          ),
          Obx(
            () => OrangeButton(
              iconFront: ButtonIconType.multiply,
              iconBack: ButtonIconType.multiplyReverse,
              isClicked: controller.multiply,
              onPressed: controller.pushMultiplyBtn,
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlackButton(
            type: BlackBtnType.FOUR,
            onPressed: () => controller.pushNumberBtn('4'),
          ),
          BlackButton(
            type: BlackBtnType.FIVE,
            onPressed: () => controller.pushNumberBtn('5'),
          ),
          BlackButton(
            type: BlackBtnType.SIX,
            onPressed: () => controller.pushNumberBtn('6'),
          ),
          Obx(
            () => OrangeButton(
              iconFront: ButtonIconType.minus,
              iconBack: ButtonIconType.minusReverse,
              isClicked: controller.minus,
              onPressed: controller.pushMinusBtn,
            ),
          ),
        ],
      ),
    );
  }

  Widget _fourthRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlackButton(
            type: BlackBtnType.ONE,
            onPressed: () => controller.pushNumberBtn('1'),
          ),
          BlackButton(
            type: BlackBtnType.TWO,
            onPressed: () => controller.pushNumberBtn('2'),
          ),
          BlackButton(
            type: BlackBtnType.THREE,
            onPressed: () => controller.pushNumberBtn('3'),
          ),
          Obx(
            () => OrangeButton(
              iconFront: ButtonIconType.plus,
              iconBack: ButtonIconType.plusReverse,
              isClicked: controller.plus,
              onPressed: controller.pushPlusBtn,
            ),
          ),
        ],
      ),
    );
  }

  Widget _fifthRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlackButton(
            type: BlackBtnType.ZERO,
            onPressed: () => controller.pushNumberBtn('0'),
          ),
          BlackButton(
            type: BlackBtnType.DOT,
            onPressed: controller.pushDotBtn,
          ),
          EqualButton(
            onPressed: controller.calculate,
          ),
        ],
      ),
    );
  }
}
