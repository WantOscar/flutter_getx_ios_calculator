import 'package:get/get.dart';

enum Calculate { PLUS, MINUS, MULTIPLY, DIVIDE, NONE }

class CalculatorController extends GetxController {
  RxString _result = '0'.obs;
  num num1 = 0; // 연산버튼이 눌리기 전의 숫자
  num num2 = 0; // 연산버튼이 눌린 후의 숫자
  Calculate status = Calculate.NONE; // 초기 상태

  // 애니메이션을 위한 boolean 변수 추가
  bool pushCalculateBtn = false; // num1과 num2를 구분하는 경계
  RxBool _initStatus = true.obs;
  RxBool _pushPlus = false.obs;
  RxBool _pushMinus = false.obs;
  RxBool _pushMultiply = false.obs;
  RxBool _pushDivide = false.obs;

  String get result => _result.value;
  bool get init => _initStatus.value;
  bool get plus => _pushPlus.value;
  bool get minus => _pushMinus.value;
  bool get multiply => _pushMultiply.value;
  bool get divide => _pushDivide.value;

  // 연산 버튼 초기화 함수
  void initPushCalculateStatus() {
    _pushPlus(false);
    _pushMinus(false);
    _pushMultiply(false);
    _pushDivide(false);
  }

  void pushNumberBtn(String value) {
    if (pushCalculateBtn) {
      initResultNumber();
      initPushCalculateStatus();
      pushCalculateBtn = false;
    }

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

  void pushPlusBtn() {
    status = Calculate.PLUS;
    pushCalculateBtnProgress(status); // 더하기 버튼 클릭 이벤트
    print(status);
    print(_pushPlus);
  }

  void pushMinusBtn() {
    status = Calculate.MINUS;
    pushCalculateBtnProgress(status); // 빼기 버튼 클릭 이벤트
    print(status);
    print(_pushMinus);
  }

  void pushMultiplyBtn() {
    status = Calculate.MULTIPLY;
    pushCalculateBtnProgress(status); // 곱하기 버튼 클릭 이벤트
    print(status);
    print(_pushMultiply);
  }

  void pushDivideBtn() {
    status = Calculate.DIVIDE;
    pushCalculateBtnProgress(status); // 나누기 버튼 클릭 이벤트
  }

  void pushCalculateBtnProgress(Calculate type) {
    if (num1 != 0) {
      switch (status) {
        case Calculate.PLUS:
          num1 += num.parse(_result.value);
          break;
        case Calculate.MINUS:
          num1 -= num.parse(_result.value);
          break;
        case Calculate.MULTIPLY:
          num1 *= num.parse(_result.value);
          break;
        case Calculate.DIVIDE:
          num1 /= num.parse(_result.value);
          break;
        default:
          break;
      }
      _result(num1.toString());
    } else {
      num1 = num.parse(_result.value); // 처음 입력한 숫자
    }
    initPushCalculateStatus(); // 연산 버튼 초기화

    switch (type) {
      case Calculate.PLUS:
        _pushPlus(true);
        break;
      case Calculate.MINUS:
        _pushMinus(true);
        break;
      case Calculate.MULTIPLY:
        _pushMultiply(true);
        break;
      case Calculate.DIVIDE:
        _pushDivide(true);
        break;
      case Calculate.NONE:
        break;
    }
    pushCalculateBtn = true; // num1과 num2를 구분하는 변수
  }

  void calculate() {
    num2 = num.parse(_result.value); // 결과 창 숫자
    initPushCalculateStatus(); // 연산 버튼 초기화

    // 현재 연산의 종류 확인 후 연산
    switch (status) {
      case Calculate.PLUS:
        _result(doubleToInt((num1 + num2).toDouble()).toString());
        break;
      case Calculate.MINUS:
        _result(doubleToInt((num1 - num2).toDouble()).toString());
        break;
      case Calculate.MULTIPLY:
        _result(doubleToInt((num1 * num2).toDouble()).toString());
        break;
      case Calculate.DIVIDE:
        // 0으로 나누면 '오류' 표시
        if (num2 == 0) {
          _result.value = '오류';
          return;
        }
        _result(doubleToInt((num1 / num2).toDouble()).toString());
        break;
      case Calculate.NONE:
        break;
    }
    print(_result.value);
  }

  //
  doubleToInt(double d) {
    if (d != d.round()) {
      return d;
    }
    return d.toInt();
  }

  // AC 버튼 누르면 모두 초기화
  void allClear() {
    initPushCalculateStatus(); // 연산버튼 변수들 초기화
    initResultNumber(); // 결과값 초기화
    num1 = 0;
    num2 = 0;
    status = Calculate.NONE;
  }

  //결과값 초기화 함수
  void initResultNumber() {
    _result.value = '0';
  }

  // 부호 바꾸기
  void convert() {
    _result((num.parse(_result.value) * -1).toString());
  }

  // 백분율 버튼
  void changeToPercent() {
    _result((num.parse(_result.value) / 100).toString());
  }
}
