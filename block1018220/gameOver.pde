//ゲームオーバー画面
void gameOver()
{
  playerMove();
  scoreShow();
  textSize(50);
  fill(0, 100, 100);
  text("GAME OVER", 60, 300);


  retry++;
  if ((retry%60)<40)
  {
    textSize(20);
    fill(20, 100, 100);
    text("Click to retry!", 140, 360);
  }
}
