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
      // Containerは装飾可能な箱
      body: Container(
        // 画面の横幅いっぱい
        width: double.infinity,
        // 画面の縦幅いっぱい
        height: double.infinity,
        // 中央で要素配置
        child: Center(
          // Columnは縦に要素を並べる
          child: Column(
            // 縦方向の中央寄せ
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // アイコン表示
              Icon(
                Icons.flutter_dash,
                size: 100,
                color: Colors.amber,
              ),

              // 間を開ける
              SizedBox(height: 20),

              // メインメッセージ
              Text(
                // 表示したいテキスト
                "Flutterへようこそ",
                // テキストの装飾
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}