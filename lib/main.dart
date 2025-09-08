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
      // home: HomePage()
      home: stateMaster(),
    );
  }
}

// 設計図(命令書)クラス
// 状態が変わるので、StatefulWidgetを使う
class stateMaster extends StatefulWidget{
  @override
  // 書き方1
  // State<StatefulWidget> createState() {
  //   return _stateTest();
  // }
  // 書き方2
  _stateTest createState() => _stateTest();
}


// 実際の状態管理クラス
// State
// 実際の状態とデータを管理する作業員
// _がある : プライベート
// _がない : パブリック
class _stateTest extends State<stateMaster> {
  String pushText = "まだ押されていない";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ヘッダー部分
      appBar: AppBar(
        title: Text("状態管理のテスト"),
      ),

      // メインコンテンツの部分
      body: Center(
        // 部品縦並べ
        child: Column(
          // 中央に配置
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pushText),
            // ボタン
            ElevatedButton(
              // ボタン押された時の処理
              onPressed: (){
                print("ボタンが押された");
                // 画面の自動更新
                setState(() {
                  // テキストを変更する
                  pushText = "押された！！";
                });
              },
              // ボタンに表示するテキスト
              child: Text("TESTボタン")
            ),
          ],
        ),
      ),
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