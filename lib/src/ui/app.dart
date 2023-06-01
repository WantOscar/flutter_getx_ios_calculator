import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ios_calculator/src/components/black_button.dart';
import 'package:flutter_getx_ios_calculator/src/components/equal_button.dart';
import 'package:flutter_getx_ios_calculator/src/components/grey_button.dart';
import 'package:flutter_getx_ios_calculator/src/components/orange_button.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_color.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_icon_type.dart';
import 'package:get/get.dart';

import '../controller/calculator_controller.dart';

class App extends GetView<CalculatorController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Column(
            children: [
              Expanded(flex: 3, child: _result()),
              Expanded(flex: 7, child: _buttons()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _result() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SelectableText(
          '0',
          style: TextStyle(
              fontSize: 70, fontWeight: FontWeight.w300, color: Colors.white),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GreyButton(
          type: GreyBtnType.ALLCLEAR,
          onPressed: () {},
          child: child,
        ),
        GreyButton(
          type: GreyBtnType.PLUSNMINUS,
          onPressed: () {},
          child: child,
        ),
        OrangeButton(
          isClicked: false,
          iconFront: ButtonIconType.divide,
          iconBack: ButtonIconType.divideReverse,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        OrangeButton(
          isClicked: false,
          iconFront: ButtonIconType.multiply,
          iconBack: ButtonIconType.multiplyReverse,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        OrangeButton(
          isClicked: false,
          iconFront: ButtonIconType.minus,
          iconBack: ButtonIconType.minusReverse,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _fourthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        OrangeButton(
          isClicked: false,
          iconFront: ButtonIconType.plus,
          iconBack: ButtonIconType.plusReverse,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _fifthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          iconFront: ButtonIconType.equal,
          isClicked: false,
          onPressed: () {},
        ),
      ],
    );
  }
}
