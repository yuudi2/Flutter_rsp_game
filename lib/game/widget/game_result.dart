import 'package:flutter/material.dart';
import 'package:flutter_rsp_game/game/widget/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;


  const GameResult({required this.isDone, required this.callback, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if(isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(result!.displayString, style: TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          TextButton(child: Text('다시 하기', style: TextStyle(fontSize: 24)),
          onPressed: () => callback.call(),)
        ],
      );

    }

    return const Center(
      child: Text('가위, 바위, 보 중 하나를 선택 해 주세요',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
