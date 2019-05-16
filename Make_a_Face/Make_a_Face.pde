void setup() {
  size(500,500);
  background(255); 
frameRate(1);}
void draw() {
 background(255);
 drawHead();
}
void mouseClicked(){saveFrame("line-######.png");}
void drawHead(){
fill(255,random(100,255),random(100,255));
ellipse(width/2,height/2,random(width*.55,width*.75),random(height*.8,height*.99));
fill(0);
ellipse(width/3,height/3,random(width*.1,width*.2),random(height*.1,height*.2));
ellipse(width*2/3,height/3,random(width*.1,width*.2),random(height*.1,height*.2));
fill(random(200-255),random(100,200),0);
strokeWeight(4);
triangle(width/2,random(200,250),random(180,220),random(320,350),random(270,320),random(320,350));
fill(random(200,255),random(0,50),random(0,50));
curve(random(120,130),random(330,370),random(150,170),random(400,430),random(330,350),random(400,430),random(330,390),random(350,370));}
