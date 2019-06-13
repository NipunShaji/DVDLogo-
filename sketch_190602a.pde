
float x,y,xnew,ynew;
float xspeed,yspeed;
PImage dvd;
int r,g,b;
int xdir=1,ydir=1;

void setup(){
  
  background(0);
  fullScreen();
  xspeed = width/1000;
  yspeed = height/1000;
  xnew = width - 481;
  ynew = height - 294;
  
  setrgb();
  
  do{
  x = random(width);
  y = random(height);
  }while(x >= xnew || y >= ynew);
  
  dvd = loadImage("logo.png");

  
}

void draw(){
  background(0);
  tint(r,g,b);
  image(dvd,x,y);
  updatexy();
}

void updatexy(){
 
  x = x + (xdir * xspeed);
  if(x<0){
    x = x + xspeed;
    xdir = xdir * -1;
    setrgb();
  }
  if(x>xnew){
    x = x - xspeed;
    xdir = xdir *-1;
    setrgb();
  }
  
  y = y + (ydir * xspeed);
  if(y<0){
    y = y + yspeed;
    ydir = ydir * -1;
    setrgb();
  }
  if(y>ynew){
    y = y - yspeed;
    ydir = ydir * -1;
    setrgb();
  }
}

void setrgb(){
  r = int(random(50,180));
  g = int(random(50,180));
  b = int(random(50,180));
}
