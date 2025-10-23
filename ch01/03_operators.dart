/*
  날짜 : 2025.10.23.
  이름 : 이민준
  내용 : Dart 연산자
 */


void main(){
  ///////////////
  // 기본 연산자
  ///////////////
  int a = 10;
  int b = 3;


  // 산술 연산자
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b); // 출력값 double
  print(a ~/ b); // 정수 나눗셈
  print(a % b); // 나머지

  // 대입 연산자
  int x = 5;
  x += 3;
  print(x);
  x *= 3;
  print(x);

  // 증감 연산자
  x++;
  print(x);

  --x;
  print(x);

  // 비교 연산자
  print(a == b);
  print(a != b);

  // 논리 연산자
  print(a > 1 && b > 1);
  print(a < 10 || b > 11);
  print(!(a > b));

  // 삼항 연산자
  String result = a > b ? 'a가 크다' : 'b가 크다';
  print(result);

  // 타입 검사 연산자
  dynamic value = 'hello';
  print('value is int : ${value is int}');          // bool로 출력 (true or false)
  print('value is String : ${value is String}');
  print('value is! String : ${value is! String}');

  ///////////////
  // Null 관련 연산자
  ///////////////

  // Null 병합 연산자
  int? value1;
  // int result1 = value1; -> non nullable에 nullable을 바로 대입 불가능
  int result1 = value1 ?? 100; // value1이 null이면 100 대입
  print(result1);

  value1 = 50;
  // 최신 Dart 컴파일러는 자동으로 타입 체크를 통해 ?? 병합 연산자 생략
  int result2 = value1 ?? 200; // null이면 200대입 아니면 50 대입
  print(result2);

  int? num1;
  int? num2;
  int? num3;

  int result3 = num1 ?? num2 ?? num3 ?? 1000; // 중복 null 체크 순차적으로 1->3순으로 체크, 모두 null이면 1000
  print('result3: ${result3}');

  num2 = 2;
  int result4 = num1 ?? num2 ?? num3 ?? 1000;
  print('result4: ${result4}');

  // Null 대입 연산자, num3가 null이면 3 초기화
  num3 ??= 3; // ??와 = 사이에 공백 있으면 안됨
  print('num3 : ${num3}');

  // Null 접근 연산자
  String? nullableString;
  print(nullableString?.toUpperCase()); // ?. 이렇게 사용하면 null이 아닐 경우에만 .toUpperCase() 호출

  nullableString = 'hello dart';
  print(nullableString?.toUpperCase()); // ?. 이렇게 사용하면 null이 아닐 경우에만 .toUpperCase() 호출

  // Null 강제 연산자
  int? maybeNumber = 3;
  int mustNotNullNumber = maybeNumber!; // Nullable 변수를 Non-Nullable 변수에 직업 대입은 안됨, 그래서 null이 아님을 명확히 보장하기 위해 ! 사용
  print(mustNotNullNumber);

}
















