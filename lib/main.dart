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

