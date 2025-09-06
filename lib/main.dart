import 'package:flutter/material.dart';
import 'dart:math'; // ランダム数値生成のために追加

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
  // サイコロの値を保存する変数（初期値は1）
  int dice1 = 1;  // 1つ目のサイコロ
  int dice2 = 1;  // 2つ目のサイコロ
  int dice3 = 1;  // 3つ目のサイコロ

  // 結果メッセージを保存する変数
  String resultMessage = 'サイコロを振る';

  // ランダムな数字生成
  Random random = Random();

  void rollDice(){
    // 画面を自動更新
    setState(() {
      // 1〜6のランダムな数値を生成
      dice1 = random.nextInt(6) + 1;  // nextInt(6)は0〜5を生成、+1で1〜6にする
      dice2 = random.nextInt(6) + 1;
      dice3 = random.nextInt(6) + 1;

      // 役を判定して表示
      resultMessage = checkChinchiroResult();
    });
  }

  String checkChinchiroResult(){
    // サイコロの値をリストにして並び替え
    List<int> dices = [dice1, dice2, dice3];
    dices.sort();  // 小さい順に並び替え

    // ゾロ目の判定
    if (dice1 == dice2 && dice2 == dice3) {
      if (dice1 == 1) {
        return "ピンゾロ(1のゾロ目)";
      } else {
        return "${dice1}のゾロ目";
      }
    }

    // シゴロ（4・5・6）の判定
    if (dices[0] == 4 && dices[1] == 5 && dices[2] == 6) {
      return "シゴロ(4・5・6)";
    }

    // ヒフミ（1・2・3）の判定
    if (dices[0] == 1 && dices[1] == 2 && dices[2] == 3) {
      return "ヒフミ(1・2・3)";
    }

    // 目（同じ数字が2つある場合の残り1つ）の判定
    if (dice1 == dice2) {
      return "${dice3}の目";
    } else if (dice1 == dice3) {
      return "${dice2}の目";
    } else if (dice2 == dice3) {
      return "${dice1}の目";
    }

    // 上記のどれにも該当しない場合
    return '目なし';
  }

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

            // サイコロ表示エリア
            Container(
              decoration: BoxDecoration(
                // 薄いグレー
                color: Colors.grey[100],
                // 角丸
                borderRadius: BorderRadius.circular(15),
                // 枠線
                border: Border.all(color: Colors.grey)
              ),
              // 内側の余白
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "サイコロの結果",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  // 縦に余白
                  SizedBox(height: 15),

                  // 3つのサイコロを横並びで表示(シンプルな数字のみ)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 等間隔で配置
                    children: [
                      // 1つ目のサイコロ
                      Text(
                        '$dice1',
                        style: TextStyle(
                          fontSize: 48,            // 大きな文字
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      // 2つ目のサイコロ
                      Text(
                        '$dice2',
                        style: TextStyle(
                          fontSize: 48,            // 大きな文字
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      // 3つ目のサイコロ
                      Text(
                        '$dice3',
                        style: TextStyle(
                          fontSize: 48,            // 大きな文字
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // 説明文のテキスト
            Text(
              resultMessage,
              style: TextStyle(fontSize: 18),
            ),
            // 縦方向に余白を設ける
            SizedBox(height: 50),

            // サイコロを振るボタン
            ElevatedButton(
              // ボタンが押されたときの処理
              onPressed: (){
                rollDice();
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