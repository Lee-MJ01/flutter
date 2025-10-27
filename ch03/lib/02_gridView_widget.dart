/*
  날짜 : 2025.10.27.
  이름 : 이민준
  내용 : GridView 위젯 실습
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const GridViewTest());
}

class GridViewTest extends StatelessWidget {
  const GridViewTest({super.key});

  final List<String> cities = const ['서울','대전','대구','부산','제주'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('02.GridView 위젯 실습'),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,      // 한줄에 표시할 아이템 개수
              crossAxisSpacing: 10,   // 각 아이템마다의 가로(교차축) 간격
              mainAxisSpacing: 10,    // 각 아이템마다의 세로(메인축) 간격
              childAspectRatio: 1 / 1.5 // 비율 조정 (가로 / 세로)
            ), // Grid 형태 정의하는 속성
            itemCount: cities.length,
            itemBuilder: (context, index){
              return Card(
                child: Center(
                  child: Text(cities[index]),
                ),
              );
            }
        ),
      ),
    );
  }
}
