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
    // TODO: implement build
    throw UnimplementedError();
  }
}