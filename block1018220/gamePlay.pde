//ゲームプレイ画面
void gamePlay()
{
  playerMove();
  blockShow();
  for (int i=0; i<100; i++)
    ballMove(i);
  scoreShow();
}
