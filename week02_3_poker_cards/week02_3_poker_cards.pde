void setup(){
  size(500,500); 
}
int  W=25;
void draw(){
  drawCard(100,100,"S4");//使用函式
  drawCard(130,150,"H3");
  drawCard(160,200,"D5");
  drawCard(190,250,"CJ");
}////牌面：黑桃Spade, Heart, Dimand,Club
void drawCard(int x,int y, String face){
  fill(255);
  rect(x-W/2,y-W/2,150+W,250+W,20);
  fill(#FFFFAA);
  rect(x,y,150,250,20);
  fill(0);
  textSize(40);
  text(face,x,y+40);
}
