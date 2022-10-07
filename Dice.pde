Die barry;
int counter;
void setup() {
  size(450, 450);
  //rect (x,y,width,height)
  noLoop();
}

void draw() {
  background(218, 196, 255);
  for (int y = 0; y<=250; y+=50) {
    for (int x = 0; x<=250; x+=50) {
      barry = new Die(y+75, x+75, 45, 45);   //instatiating a new object - new adds an instance of a class
      barry.show();                   // new tells computer how much space to reserve (primatives already set size)

      if (barry.chance == 1)
        counter=counter+1;
      else if (barry.chance == 2)
        counter=counter+2;
      else if (barry.chance == 3)
        counter=counter+3;
      else if (barry.chance == 4)
        counter=counter+4;
      else if (barry.chance == 5)
        counter=counter+5;
      else
        counter=counter+6;
    }
  }
  textSize(50);
  text(counter, 190, 410);
  counter = 0;
}


void mousePressed() {
  redraw();
}
class Die {

  // member variables
  int chance; 
  int rect1, rect2, rectw, recth, rectShape;

  Die (int x, int y, int w, int h) { //constructor is also a member function. initializes member function
    // local variables = variables declared in a function (exist temporarily) NOT member variables. can only be used in the function they were declared in
    // ie. int x, int y 
    // function(int x, int y)
    roll();
    rect1=x;
    rect2=y;
    rectw=w;
    recth=h;
    rectShape=20;
    roll();
  }

  void roll() {
    if (Math.random()<.16)
      chance = 1;
    else if (Math.random()<.32)
      chance = 2;
    else if (Math.random()<.48)
      chance = 3;
    else if (Math.random()<.64)
      chance = 4;
    else if (Math.random()<.8)
      chance = 5;
    else 
    chance = 6;
  }

  void show() {
    fill(220);
    rect(rect1, rect2, rectw, recth, rectShape);
    if (chance==1) {
      fill(0);
      ellipse(rect1+22.5, rect2+22.5, 5, 5);
    } else if (chance==2) {
      fill(0);
      ellipse(rect1+30, rect2+30, 5, 5);
      ellipse(rect1+15, rect2+15, 5, 5);
    } else if (chance==3) {
      fill(0);
      ellipse(rect1+12.5, rect2+12.5, 5, 5);
      ellipse(rect1+22.5, rect2+22.5, 5, 5);
      ellipse(rect1+32.5, rect2+32.5, 5, 5);
    } else if (chance==4) {
      fill(0);
      ellipse(rect1+15, rect2+15, 5, 5);
      ellipse(rect1+30, rect2+15, 5, 5);
      ellipse(rect1+15, rect2+30, 5, 5);
      ellipse(rect1+30, rect2+30, 5, 5);
    } else if (chance==5) {
      fill(0);
      ellipse(rect1+15, rect2+12, 5, 5);
      ellipse(rect1+30, rect2+12, 5, 5);
      ellipse(rect1+15, rect2+34, 5, 5);
      ellipse(rect1+30, rect2+34, 5, 5);
      ellipse(rect1+22.5, rect2+22.5, 5, 5);
    } else {
      fill(0);
      ellipse(rect1+15, rect2+14, 5, 5);
      ellipse(rect1+30, rect2+14, 5, 5);
      ellipse(rect1+15, rect2+24, 5, 5);
      ellipse(rect1+30, rect2+24, 5, 5);
      ellipse(rect1+15, rect2+34, 5, 5);
      ellipse(rect1+30, rect2+34, 5, 5);
    }
  }
}
