PImage img;
int i = 200;
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
  if (siz > 10){
    myFractal(x-siz/2,y-siz/2,siz/2);
    myFractal(x+siz/2,y-siz/2,siz/2);
    myFractal(x-siz/2,y+siz/2,siz/2);
    myFractal(x+siz/2,y+siz/2,siz/2);
  }
  image(img,x,y,siz/2,siz/2);
}

public void checkSize(){
  if (i >= 300 && increase == true){
    increase = false;
  } else if (i <= 100 && increase == false){
    increase = true;
  }
  if (increase == true){
    i++;
  } else {
    i--;
  }
}
