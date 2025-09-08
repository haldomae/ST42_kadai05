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
      // Containerは装飾可能な箱
      body: Container(
        // 画面の横幅いっぱい
        width: double.infinity,
        // 画面の縦幅いっぱい
        height: double.infinity,
        // 子要素配置
        // 中央に配置
        child: Center(
          // 縦並べ
          child: Column(
            // 縦方向の中央寄せ
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // アイコン表示
              Icon(
                Icons.flutter_dash,
                size: 100,
                color: Colors.red,
              ),
              // 間を開ける
              SizedBox(height: 20),
              Text(
                "Flutterの鳥",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}