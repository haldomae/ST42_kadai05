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
      // アプリのテーマをカスタマイズ
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: "NotoSans",
      ),
      // Scaffoldは画面の基本構成
      home: HomePage(),
    );
  }
}

// ホーム画面用のクラス
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 上部に表示されているバー
      appBar: AppBar(
        title: Text(
            "自分のアプリ",
          style: TextStyle(
            // テキストサイズ
            fontSize: 20,
            // 文字の太さ
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      // 画面の本体部分
      body: Center(
        // 中央配置で要素を配置
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