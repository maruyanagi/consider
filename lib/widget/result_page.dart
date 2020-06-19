import 'package:flutter/material.dart';
import '../utils/hex_color.dart';

class ResultPage extends StatelessWidget {
  /// タップ時の処理
  final Function _tapResetButton;

  /// 全問題数
  final int questionCount;

  /// 正答数
  final int correctAnswerCount;

  ResultPage(
      this._tapResetButton,
      this.questionCount,
      this.correctAnswerCount
      );

  @override
  Widget build(BuildContext context) {
    final hoge = '1';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('$hoge',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            '正答数: $correctAnswerCount / $questionCount',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            child: RaisedButton(
              color: HexColor('#6DDE00'),
              child: Text(
                'リセットする',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              onPressed: _tapResetButton,
            ),
          ),
        )
      ],
    );
  }
}