void setup(){
  size(500,500);
  background(#FFFFF2);
  stroke(255,0,0);
}
void draw(){
  if(mousePressed){
   line(mouseX,mouseY,pmouseX,pmouseY); 
  }
}
void keyPressed(){
 if(key=='1')stroke(#FF2E2E); 
 if(key=='2')stroke(#2E41FF); 
 if(key=='3')stroke(#23B73F); 
 if(key=='4')stroke(#FCD63B); 
}
