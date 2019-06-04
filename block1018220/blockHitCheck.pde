//----Blockのどの方向にぶつかったのかチェック-----
void blockHitCheck(int ii, float xx, float yy)
{
  for (int i=0; i<100; i++)
  {
    if (!((xx<x[i]) && (xx+block_w>x[i]) && (yy<y[i]) && (yy+block_h>y[i])))
    {
      // Blockに当たっていない
    } else
    {
      blf[ii]=0;
      block_dis++;

      //----どの方向からぶつかったのかチェック-----
      if ((xx<last_x[i]) && (xx+block_w>last_x[i]))
      {
        dy[i]=-dy[i]; // ブロックの幅（ｘ）の中にぶつかった
      } else if ((yy<last_y[i]) && (yy+block_h>last_y[i]))
      {
        dx[i]=-dx[i]; // ブロックの高さ（y）の中にぶつかった
      } else
      {
        dx[i]=-dx[i];
        dy[i]=-dy[i];
      }
    }
  }
}
