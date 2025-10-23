

// Dart 프로그램 진입점
void main(){

    // 변수와 기본 타입
    String name = '홍길동';
    int age = 23;
    double height = 170.2;
    bool isStudent = true;

    var etc = '부산시'; // 자동 추론 타입(컴파일 시점, 최초 한번 타입이 정해지면 변경 불가)
    dynamic etc = '기타'; // 자동 동적 타입(런타임 시점, 최초 한번 타입이 정해져도 변경 가능)

    address = 1;
    etc = 1;

    print('이름 : ${name}\n나이: ${age}\n키: ${height}\n학생여부: ${isStudent}\n주소: ${address}');

    // Nullable 타입
    String? value1 = null;

}