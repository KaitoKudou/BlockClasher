//ブロック表示
void blockShow() {
  float xx, yy;
  for (int i=0; i<25; i++)
  {
    if (blf[i]==1)
    {
      fill((i/5)*15, 100, 100);
      xx=(i%5)*(block_w+2);
      yy=50+(i/5)*(block_h+2);

      blockHitCheck(i, xx, yy);
      if (blf[i]==1)
        rect(xx, yy, block_w, block_h);
    }
  }
}
