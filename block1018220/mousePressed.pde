//マウスクリックで画面遷移
void mousePressed()
{
  if (gseq==0)
    gseq=1;
  if (gseq==2) // ゲームオーバーならば
    gameSetup();
}
