//ラケットの表示
void playerMove()
{
  fill(0, 0, 100);
  rect(mouseX+25, height-50, width, 3); // pad
  rect(mouseX-25, height-50, -(width), 3); //pad
}
