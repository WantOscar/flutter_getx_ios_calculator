import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_ios_calculator/src/components/basic_button.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_color.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_size.dart';

enum BlackBtnType {
  ONE,
  TWO,
  THREE,
  FOUR,
  FIVE,
  SIX,
  SEVEN,
  EIGHT,
  NINE,
  ZERO,
  DOT
}

class BlackButton extends StatelessWidget {
  final BlackBtnType type;
  final Function() onPressed;
  const BlackButton({super.key, required this.type, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case BlackBtnType.ONE:
        return _numberBtn('1');
      case BlackBtnType.TWO:
        return _numberBtn('2');
      case BlackBtnType.THREE:
        return _numberBtn('3');
      case BlackBtnType.FOUR:
        return _numberBtn('4');
      case BlackBtnType.FIVE:
        return _numberBtn('5');
      case BlackBtnType.SIX:
        return _numberBtn('6');
      case BlackBtnType.SEVEN:
        return _numberBtn('7');
      case BlackBtnType.EIGHT:
        return _numberBtn('8');
      case BlackBtnType.NINE:
        return _numberBtn('9');
      case BlackBtnType.ZERO:
        return _zeroBtn('0');
      case BlackBtnType.DOT:
        return _zeroBtn('.');
    }
  }

  Widget _numberBtn(String number) {
    return BasicButton(
      color: ButtonColor.black,
      type: Type.ROUND,
      child: _numberText(number),
      onPressed: () {},
    );
  }

  Widget _numberText(String number) {
    return Text(
      number,
      style: const TextStyle(
        fontSize: 25,
        color: CupertinoColors.white,
      ),
    );
  }

  Widget _zeroBtn(String number) {
    return BasicButton(
      color: ButtonColor.black,
      type: Type.FLAT,
      child: _numberText(number),
      onPressed: () {},
    );
  }
}
