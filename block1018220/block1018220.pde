//ブロック崩し

void setup() {
  size(400, 500);
  // background(0);
  colorMode(HSB, 50, 50, 50);
  gameSetup();
}

float x[]=new float[100]; //ボール初期位置 x
float y[]=new float[100]; // ボール初期位置 y
float dx[]=new float[100]; //ボール変化量 x
float dy[]=new float[100]; // ボール変化量 y
int ball[] = new int[100]; //ボール1個1個のフラグ（通常）
int rhit=0; // 0 or 1 ラケットヒット判定
int gseq; //ゲームの流れを管理
int ball_count = 0; // 使われたボールの個数
int score; // 点数
int block_dis; // ブロックが消えた個数をカウント
int retry; // リトライ用変数
int time;
int time2;
int time_title;
int blf[] = new int[25]; // 0:ブロック非表示 1:ブロック表示
float r_w; // racket width
float block_w; // block width
float block_h; // block height
float ball_w; // ball width
float ball_h; // ball height
float last_x[]=new float[100]; //ブロックにぶつかる直前のx
float last_y[]=new float[100]; //ブロックにぶつかる直前のy


void draw() {
  background(100);
  if (gseq == 0)
    gameTitle();
  else if (gseq == 1)
    gamePlay();
  else
    gameOver();

  for (int i=0; i<100; i++)
  {
    if (ball[i]==1)
    {
      if (racketHit(x[i], y[i]))
      {
        dy[i]=random(-4.-2);
      }
      fill(color(0, 0, 255));
      rect(x[i], y[i], ball_w, ball_h);
    }
  }
  timer();
  println(time);
}
