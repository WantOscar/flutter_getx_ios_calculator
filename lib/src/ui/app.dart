import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ios_calculator/src/components/black_button.dart';
import 'package:flutter_getx_ios_calculator/src/components/grey_button.dart';
import 'package:flutter_getx_ios_calculator/src/components/orange_button.dart';
import 'package:flutter_getx_ios_calculator/src/constants/button_color.dart';

class App extends StatelessWidget {
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
          onPressed: () {},
          child: const Text(
            'AC',
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
            ),
          ),
        ),
        GreyButton(
          onPressed: () {},
          child: const Icon(CupertinoIcons.plus_slash_minus,
              color: Colors.black, size: 35),
        ),
        GreyButton(
          onPressed: () {},
          child:
              const Icon(CupertinoIcons.percent, color: Colors.black, size: 35),
        ),
        OrnageButton(
          isClick: false,
          icon: Icon(
            CupertinoIcons.divide,
            color: ButtonColor.white,
            size: 35,
          ),
          activeIcon: Icon(
            CupertinoIcons.divide,
            color: ButtonColor.orange,
            size: 35,
          ),
        ),
      ],
    );
  }

  Widget _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '7',
            style: TextStyle(fontSize: 35),
          ),
        ),
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '8',
            style: TextStyle(fontSize: 35),
          ),
        ),
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '9',
            style: TextStyle(fontSize: 35),
          ),
        ),
        OrnageButton(
          isClick: false,
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.multiply,
            color: ButtonColor.white,
            size: 35,
          ),
          activeIcon: Icon(
            CupertinoIcons.multiply,
            color: ButtonColor.orange,
            size: 35,
          ),
        ),
      ],
    );
  }

  Widget _thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '4',
            style: TextStyle(fontSize: 35),
          ),
        ),
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '5',
            style: TextStyle(fontSize: 35),
          ),
        ),
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '6',
            style: TextStyle(fontSize: 35),
          ),
        ),
        OrnageButton(
          isClick: false,
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.minus,
            color: ButtonColor.white,
            size: 35,
          ),
          activeIcon: Icon(
            CupertinoIcons.minus,
            color: ButtonColor.orange,
            size: 35,
          ),
        ),
      ],
    );
  }

  Widget _fourthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '1',
            style: TextStyle(fontSize: 35),
          ),
        ),
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '2',
            style: TextStyle(fontSize: 35),
          ),
        ),
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '3',
            style: TextStyle(fontSize: 35),
          ),
        ),
        OrnageButton(
          isClick: false,
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.plus,
            color: ButtonColor.white,
            size: 35,
          ),
          activeIcon: Icon(
            CupertinoIcons.plus,
            color: ButtonColor.orange,
            size: 35,
          ),
        ),
      ],
    );
  }

  Widget _fifthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlackButton(
          onPressed: () {},
          type: Type.FLAT,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  '0',
                  style: TextStyle(fontSize: 35),
                ),
              ],
            ),
          ),
        ),
        BlackButton(
          onPressed: () {},
          type: Type.ROUND,
          child: const Text(
            '.',
            style: TextStyle(fontSize: 35),
          ),
        ),
        OrnageButton(
          isClick: false,
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.equal,
            color: ButtonColor.white,
            size: 35,
          ),
          activeIcon: Icon(
            CupertinoIcons.equal,
            color: ButtonColor.orange,
            size: 35,
          ),
        ),
      ],
    );
  }
}
