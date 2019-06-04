//ボールを追加
void ballAdd(float nx, float ny, float ndx, float ndy)
{
  if (ball_count>=999)
    ball_count=0;
  ball[ball_count]=1;
  x[ball_count]=nx;
  y[ball_count]=ny;
  dx[ball_count]=ndx;
  dy[ball_count]=ndy;
  ball_count++;
}
