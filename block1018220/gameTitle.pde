//ゲームタイトル画面
void gameTitle()
{
  gseq=0;
  playerMove();
  blockShow();
  scoreShow();
  retry++;


  time2=0;
  time_title=millis()/1000;

  textSize(20);
  fill(20, 100, 100);
  text("Click to start!", 140, 360);
}
