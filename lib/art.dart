import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // 가로축 중앙 정렬
              children: [
                Text(
                  '위시',
                  style: TextStyle(
                      fontSize: 50,
                      height: 0.85,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6F86E5)),
                ),
                Text(
                  '뱅크',
                  style: TextStyle(
                    fontSize: 44,
                    height: 0.85,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            // 로그인/회원가입 텍스트 아래 패딩 추가
            Text(
              '로그인 / 회원가입을 하고 계속하기',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 250, // 이미지의 너비를 원하는 크기로 설정합니다.
              height: 300, // 이미지의 높이를 원하는 크기로 설정합니다.
              child: Image.asset("assets/images/whisbank.png"),
            ),

            Container(
              width: 330, // 버튼의 너비를 설정합니다.
              height: 70, // 버튼의 높이를 설정합니다.
              padding:
                  EdgeInsets.symmetric(horizontal: 20), // 버튼 내부의 좌우 패딩을 설정합니다.
              decoration: BoxDecoration(
                color: Colors.white, // 배경색을 흰색으로 설정합니다.
                borderRadius: BorderRadius.circular(20), // 모서리를 둥글게 합니다.
                border: Border.all(
                    color: Color(0xFFDAE8FF), width: 5), // 테두리 색상과 두께를 설정합니다.
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // 가로축에서 중앙에 배치합니다.
                children: [
                  Icon(Icons.g_translate,
                      color: Color(0xFF424242)), // 구글 아이콘을 설정합니다.
                  SizedBox(width: 10), // 아이콘과 텍스트 사이의 공간을 설정합니다.
                  Text(
                    '구글 계정으로 로그인',
                    style: TextStyle(
                        color: Colors.black, // 텍스트 색상을 설정합니다.
                        fontWeight: FontWeight.bold, // 글씨 굵기를 설정합니다.
                        fontFamily: 'Pretendard',
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20), // '또는' 텍스트 위아래 패딩 추가
              child: Text(
                '-------------또는-------------',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF424242),
                    fontWeight: FontWeight.bold, // 글씨 굵기를 설정합니다.
                    fontFamily: 'Pretendard'),
              ),
            ),
            Container(
              width: 330, // 두 번째 버튼의 너비를 설정합니다.
              height: 70, // 두 번째 버튼의 높이를 설정합니다.
              padding: EdgeInsets.symmetric(
                  horizontal: 20), // 두 번째 버튼 내부의 좌우 패딩을 설정합니다.
              decoration: BoxDecoration(
                color: Colors.white, // 배경색을 흰색으로 설정합니다.
                borderRadius: BorderRadius.circular(20), // 모서리를 둥글게 합니다.
                border: Border.all(
                    color: Color(0xFFDAE8FF), width: 5), // 테두리 색상과 두께를 설정합니다.
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // 가로축에서 중앙에 배치합니다.
                children: [
                  Icon(Icons.person, color: Colors.black), // 인물 아이콘을 설정합니다.
                  SizedBox(width: 10), // 아이콘과 텍스트 사이의 공간을 설정합니다.
                  Text(
                    '회원가입',
                    style: TextStyle(
                        color: Colors.black, // 텍스트 색상을 설정합니다.
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pretendard', // 글씨 굵기를 설정합니다.
                        fontSize: 25),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF8F9FA),
    );
  }
}
