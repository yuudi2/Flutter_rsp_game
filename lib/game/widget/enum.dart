const assetPath = 'assets/images';

enum InputType {
  rock,
  scissors,
  paper;

  String get path => '$assetPath/$name.png';
}



enum Result {
  playerWin('Player 승리'),
  draw('무승부'),
  cpuWin('cpu 승리');

  const Result(this.displayString);

  final String displayString;
}