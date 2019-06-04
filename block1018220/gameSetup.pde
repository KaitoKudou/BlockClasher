//すべての変数をここで初期化
void gameSetup()
{
  gseq=0;

  x[0]=0;
  y[0]=250;
  dx[0] = random(1, 3);//ボール変化量 x
  dy[0] = random(1, 3);// ボール変化量 y
  r_w = 50.0; // racket width
  block_w = 78.0; // block width
  block_h = 30.0; // block height
  ball_w = 7.0; // ball width
  ball_h = 7.0; // ball height
  score=0;
  block_dis=0;
  retry=0;
  time=0;
  time2=0;
  time_title=0;

  for (int i=0; i<100; i++)
  {
    x[i]=0;
    y[i]=0;
    dx[i]=0;
    dy[i]=0;
    ball[i]=0;
  }

  ball_count=0;

  for (int i=0; i<25; i++)
    blf[i]=1; // 0:ブロック非表示 1:ブロック表示

  for (int i=1; i<100; i++)
  {
    ball[i]=0; // 0:ブロック非表示 1:ブロック表示
  }
}
