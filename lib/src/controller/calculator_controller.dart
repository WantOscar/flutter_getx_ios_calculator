import 'package:get/get.dart';

enum Calculate { PLUS, MINUS, MULTIPLY, DIVIDE, NONE }

class CalculatorController extends GetxController {
  RxString _result = '0'.obs;
  num num1 = 0; // 연산버튼이 눌리기 전의 숫자
  num num2 = 0; // 연산버튼이 눌린 후의 숫자
  Calculate status = Calculate.NONE; // 초기 상태

  // 애니메이션을 위한 boolean 변수 추가
  bool pushCalculateBtn = false; // num1과 num2를 구분하는 경계
  RxBool _pushPlus = false.obs;
  RxBool _pushMinus = false.obs;
  RxBool _pushMultiply = false.obs;
  RxBool _pushDivide = false.obs;

  String get result => _result.value;

  void pushNumberBtn(String value) {
    if (_result.value[0] == '0' && _result.value.length == 1) {
      _result(''); // 만약 초기 상태이면 빈 문자열로 대체
    }
    _result.value += value;
  }

  void pushDotBtn() {
    if (_result.value.contains('.')) {
      return;
    }
    _result.value += '.';
  }
}
