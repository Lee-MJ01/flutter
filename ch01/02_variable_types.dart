void main() {
  // 상수
  final num1 = 100; // 런타임 상수, 실행 시간에 결정
  const num2 = 200; // 컴파일 타임 상수, 클래스 멤버로 사용

  final today = DateTime.now();
  print('today: ${today}');

  // 문자열
  String hello = 'hello world';
  String wlecome = '''
  Welcome Dart!
  Welcome World!
  Welcome Flutter!
  ''';
  print(hello);
  print(wlecome);

  String escape = '나는 생각한다. \'Dart\'는 재밌다.';
  print(escape);

  String rawStr = r'C:\users\flutter\bin';
  print(rawStr);

  String fName = '길동';
  String lName = '홍';
  String fullName = lName + fName;
  print('이름: ${fullName}');
  print('이름: $lName$fName');

  String word = 'Flutter';
  print('문자열 길이: ${word.length}');
  print('첫 번째 문자: ${word[0]}');

  String text = '     Dart Language       ';
  print('원본 = [$text]');
  print('소문자: ${text.toLowerCase()}');
  print('대문자: ${text.toUpperCase()}');
  print('공백 제거: ${text.trim()}');
  print('문자 포함 여부: ${text.contains('Dart')}');
  print('문자열 교체: ${text.replaceAll('Dart', 'Flutter')}');

  String sentence = '서울,대전,대구,부산,광주';
  var cities = sentence.split(',');
  print('나눈 결과: $cities');
  print('다시 합치기: ${cities.join('/')}');
}