//ボールの動きを制御
void ballMove(int i)
{
  if (ball[i]==0)
    return;
  last_x[i]=x[i];
  last_y[i]=y[i];

  x[i] += dx[i]; 
  y[i] += dy[i];

  // check reflection
  if (x[i] + ball_w >= width) 
  {
    dx[i] = -random(2, 4);
  } else if (x[i] < 0) 
  {
    dx[i] = random(2, 4);
  }



  if (y[i] + ball_h > height) 
  {
    x[i] = random(10, width-20);
    y[i] = 220;
    score+=10;
  } else if (y[i] < 0) 
  {
    dy[i] = random(1, 2);
  }

  if (block_dis==25) // 全部ブロックが壊れたら
    gseq=2;         // ゲームオーバー
}
