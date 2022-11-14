void setup(){
  size(600,500);
}
int x=300, y=450;
float angle1=0,angle2=0;
boolean bulletFlying=false;
float bulletX,bulletY;
float bulletVX,bulletVY;
int [][] hole = new int[3][20];
void draw(){
  background(#FFFFF2);
  /*fill(0,255,0);
  drawHex(100,100,50);*/
  fill(255,255,0);
  ellipse(x,y,50,50);
  line(x,y, x+80*cos(angle1), y+80*sin(angle1));
  
  for(int i=0; i<3; i++){
    for(int j=0; j<20; j++){
      if(hole[i][j]==0) noFill();
      else fill(255,255,0);
      ellipse(15+j*30, 15+i*30, 30, 30);
    }
  }
  
  if(bulletFlying){
    bulletX+= bulletVX;
    bulletY+= bulletVY;
    fill(255,0,0);
    ellipse(bulletX,bulletY,30,30);
    if(bulletX > 585) bulletVX=-bulletVX;
    if(bulletX < 15) bulletVX=-bulletVX;
    if(bulletY < 15 || touch_yellow_ball() ) {//
      //bulletVY=0;bulletVX=0;
      put_ball_in_hole();
      bulletFlying=false;
    }
  }
}
boolean touch_yellow_ball(){
  for(int i=0; i<3; i++){
    for(int j=0; j<20; j++){
      if( hole[i][j]==1 && dist(bulletX,bulletY,15+j*30, 15+i*30)<30) return true;
    }
  }
  return false;
}
void put_ball_in_hole(){
  float nearest = 99999;
  int nowI=0, nowJ=0;
  for(int i=0; i<3; i++){
    for(int j=0; j<20; j++){
      float now = dist( 15+j*30, 15+i*30, bulletX, bulletY);
      if(now<nearest && hole[i][j]==0){
        nearest = now;
        nowI=i;
        nowJ=j;
      }
    }
  }
  hole[nowI][nowJ]=1;
}
/*void drawHex(int x,int y,float r){
  beginShape();
  for(int i=0;i<6;i++){
    float angle = radians(i*60);
    vertex(x+r*cos(angle),y+r*sin(angle));
  }
  endShape(CLOSE);
}*/
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
