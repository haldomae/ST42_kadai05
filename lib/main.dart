import 'package:flutter/material.dart';

void main() {
  // アプリを起動する関数
  runApp(MyApp());
}

// StatelessWidgetは状態を持たない画面部品
class MyApp extends StatelessWidget {
  @override
  // 画面作る関数
  Widget build(BuildContext context) {
    // MaterialAppはアプリ全体の設定
    return MaterialApp(
      title: "Flutterのテスト",
      // Scaffoldは画面の基本構成
      home: Scaffold(
        appBar: AppBar(
          title: Text("自分のアプリ"),
        ),
        body: Center(
          child: Text(
            "Hello Flutter",
            // 装飾
            style: TextStyle(
                fontSize: 24,
                color: Colors.blue
            ),
          ),
        ),
      ),
    );
  }
}