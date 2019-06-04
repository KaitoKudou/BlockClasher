//5秒ごとにballAddを呼び出す
void timer()
{
  time=(time2+millis()/1000-time_title)+4;

  if (time>=5)
  {
    time2=-(millis()/1000)+(time_title-4);
    ballAdd(random(0, width-10), random(250, height-70), random(1, 3), random(1, 3));
  }
}
