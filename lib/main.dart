import 'package:flutter/material.dart';

void main() {
  // アプリを起動する関数
  runApp(MyApp());
}

// 設計図(命令を行う)クラス
class stateMaster extends StatefulWidget {
  // 書き方1
  @override
  // State<StatefulWidget> createState() {
  //   return _stetaTest();
  // }
  // 書き方2
  _stetaTest createState() => _stetaTest();
}

// 実際の状態管理をするクラス
// 実際の状態とデータを管理する作業員
// _が付いている : プライベート
// _が付いていない : パブリック
class _stetaTest extends State<stateMaster>{
  String pushText = "まだ押されていない";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ヘッダー部分
      appBar: AppBar(
        title: Text("状態管理のテスト")
      ),

      // メインコンテンツの部分
      body: Center(
        // 部品を縦に並べる
        child: Column(
          // 中央に配置
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // テキスト
            Text(pushText),
            // ボタン
            ElevatedButton(
                // ボタンが押された時
                onPressed: (){
                  // 画面の自動更新
                  setState(() {
                    // テキスト変更
                    pushText = "押された!!";
                  });

                  print("ボタンが押された");
                },
                // ボタンに表示するテキスト
                child: Text("TESTボタン")
            )
          ],
        ),
      ),
    );
  }
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
      home: stateMaster(),
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

        // グラデーション背景
        decoration: BoxDecoration(
          // 線形グラデーション
          gradient: LinearGradient(
              // 上から
              begin: Alignment.topCenter,
              // 下から
              end: Alignment.bottomCenter,
              colors: [
                // 薄い緑
                Colors.green.shade100,
                // 濃い緑
                Colors.green.shade300
              ],
          )
        ),

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