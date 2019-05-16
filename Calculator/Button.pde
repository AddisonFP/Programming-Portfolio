class Button {
  //member variables
  int x, y, w, h, a;
  String op, v;
  color c, f;
  boolean over, num;
  //constructors
  Button(int x, int y, int w, int h, String v, color c, color f, boolean num) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.v=v;
    this.c=c;
    this.f=f;
    this.num=num;
    over=false;
  }  
  Button asNumber (int a) {
    this.a=a;
    num = true;
    return this;
  }
  Button asOperator (String op) {
    this.op=op;
    num = false;
    return this;
  }
  //display method
  void display() {
    if (num) {
      if (over) {
        fill(f);
      } else {
        fill(c);
      }
      stroke(1);
      ellipseMode(CENTER);
      ellipse(x, y, w, h);
      textAlign(CENTER, CENTER);
      fill(0);
      text(v, x, y-1);
    } else { 
      if (over) {
        fill(f);
      } else {
        fill(c);
      }
      rectMode(CENTER);
      stroke(1);
      rect(x, y, w, h, 5);
      textAlign(CENTER, CENTER);
      fill(0);
      text(v, x, y);
    }
  }
  //hover method
  void hover() {
    over = mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2;
  }
}
