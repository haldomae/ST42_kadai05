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
      // メインのページ
      home: HomePage()
    );
  }
}

// ホーム画面専用のクラス
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // Scaffoldは画面の基本構成
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "自分のアプリ",
          // テキストの装飾
          style: TextStyle(
            fontSize: 20, // 文字サイズ
            fontWeight: FontWeight.bold // 太さ
          ),
        ),
        backgroundColor: Colors.green,
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
    );
  }
}