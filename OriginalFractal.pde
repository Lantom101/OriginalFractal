PImage img;
int i = 350;
boolean increase = true;
public void setup(){
  size(500,500);
  imageMode(CENTER);
  img = loadImage("sun.png");
}

public void draw(){
  background(0);
  checkSize();
  myFractal(250,250,i);
}

public void myFractal(int x, int y, int siz){
  if (siz > 8){
    myFractal(x-siz/2,y-siz/2,siz/2);
    myFractal(x+siz/2,y-siz/2,siz/2);
    myFractal(x-siz/2,y+siz/2,siz/2);
    myFractal(x+siz/2,y+siz/2,siz/2);
  }
  image(img,x,y,(siz/4)*3,(siz/4)*3);
}

public void checkSize(){
  if (i >= 450 && increase == true){
    increase = false;
  } else if (i <= 250 && increase == false){
    increase = true;
  }
  if (increase == true){
    i++;
  } else {
    i--;
  }
}
