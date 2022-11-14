void setup(){
  size(600,500);
}
int x=300, y=450;
float angle1=0,angle2=0;
boolean bulletFlying=false;
float bulletX,bulletY;
float bulletVX,bulletVY;
void draw(){
  background(#FFFFF2);
  fill(0,255,0);
  drawHex(100,100,50);
  fill(255,255,0);
  ellipse(x,y,50,50);
  line(x,y, x+80*cos(angle1), y+80*sin(angle1));
  if(bulletFlying){
    bulletX+= bulletVX;
    bulletY+= bulletVY;
    fill(255,0,0);
    ellipse(bulletX,bulletY,30,30);
    if(bulletX > 585) bulletVX=-bulletVX;
    if(bulletX < 15) bulletVX=-bulletVX;
    if(bulletY < 20) {bulletVY=0;bulletVX=0;}
  }
}
void drawHex(int x,int y,float r){
  beginShape();
  for(int i=0;i<6;i++){
    float angle = radians(i*60);
    vertex(x+r*cos(angle),y+r*sin(angle));
  }
  endShape(CLOSE);
}
void keyPressed(){
  if(keyCode==UP) angle1-=0.1;
  if(keyCode==DOWN) angle1+=0.1;
  if(key==' '){
    bulletFlying=true;
    bulletX=x;
    bulletY=y;
    bulletVX=cos(angle1)*5;
    bulletVY=sin(angle1)*5;
  }
}
