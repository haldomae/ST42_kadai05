import 'package:flutter/material.dart';

void main() {
  runApp(Chinchiro());
}
// アプリ全体の設定を行うクラス（変化しないのでStatelessWidget）
class Chinchiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialAppはAndroidスタイルのアプリを作るための基本設定
    return MaterialApp(
      // アプリのタイトル
      title: 'チンチロアプリ',
      home: ChinchiroGame(),
    );
  }
}

// チンチロゲームの画面（状態が変わるのでStatefulWidget）
// 設計図クラス(StatefulWidget)
// 「チンチロゲーム画面を作って」という命令書
// 「状態管理クラスのインスタンス（実体）を作って返す」
class ChinchiroGame extends StatefulWidget{
  @override
  _ChinchiroGameState createState() => _ChinchiroGameState();
}

// チンチロゲームの状態を管理するクラス(設計図クラス(StatefulWidget))
// 実際の状態管理クラス(State)
// 実際の状態とデータを管理する作業員
// _がある = プライベート(秘密)
// _がない = パブリック(公開)
class _ChinchiroGameState extends State<ChinchiroGame>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 画面上部のタイトルバー
      appBar: AppBar(
        // タイトル文字
        title: Text("チンチロ"),
        // タイトルを中央に配置
        centerTitle: true,
      ),

      // メインコンテンツエリア
      // 画面全体を中央に配置
      body: Center(
        // 子要素を縦に並べる
        child: Column(
          // 縦方向の配置を中央に配置
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // メインタイトルのテキスト
            Text(
                "チンチロ",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
            ),
            // 縦方向に余白を設ける
            SizedBox(height: 50),
            // 説明文のテキスト
            Text(
              "サイコロを振る",
              style: TextStyle(fontSize: 18),
            ),
            // 縦方向に余白を設ける
            SizedBox(height: 50),

            // サイコロを振るボタン
            ElevatedButton(
              // ボタンが押されたときの処理
              onPressed: (){
                print("ボタンが押された");
              },
              // ボタンに表示するテキスト
              child: Text(
                "サイコロを振る",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15)
              ),
            ),

          ],
        ),
      ),
    );
  }
}