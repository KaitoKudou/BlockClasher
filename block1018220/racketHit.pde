//----ラケットにあたったかどうか-------
boolean racketHit(float x, float y)
{
  if (y+ball_h<height-50 || y>height-46) // ラケットに当っていない
    return false;
  if ((x>=width-width && x+ball_w<=mouseX-25) || (x+ball_w>=mouseX+25 && x+ball_w<width))
  {
    //ラケットに当たった
    return true;
  } else
    //それ以外=当たっていない
    return false;
}
