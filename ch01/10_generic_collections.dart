/*
  날짜 : 2025.10.23.
  이름 : 이민준
  내용 : Dart 제네릭 컬렉션
 */

class Box<T> {
  T item;

  Box(this.item);

  T getItem() {
    return item;
  }
}

void main() {
  // 제네릭 생성
  Box stringBox = Box<String>('hello');
  String text = stringBox.getItem();
  print('text : ${text}');

  Box intBox = Box<int>(100);
  int number = intBox.getItem();
  print('number : ${number}');



  // 집합 연산(합집합)
  var set1 = {1,2,3,4};
  var set2 = {3,4,5,6};

  Set<int> unionSet = set1.union(set2);
  print('합집합 : ${unionSet}');

  Set<int> intersectionSet = set1.intersection(set2);
  print('교집합 : ${intersectionSet}');

  Set<int> differenceSet = set1.difference(set2);
  print('차집합 : ${differenceSet}');

  Map<String, String> user = {
    'id': 'a101',
    'name': '홍길동',
    'address': '부산'
  };

  print('user : ${user}');

  // Map 키 참조
  print('이름 : ${user['name']}');
  print('주소 : ${user['address']}');

  // 키 존재 여부
  print('age 키 존재 여부 : ${user.containsKey('age')}');

  // 모든 키, 값을 리스트 생성
  print('모든 키 목록 : ${user.keys.toList()}');
  print('모든 값 목록 : ${user.values.toList()}');











}