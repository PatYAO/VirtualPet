import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
  
}

//START of Long Variable list
int x1 = int(random(0,20));
int x2 = int(random(20,40));
int x3 = int(random(40,60));
int x4 = int(random(60,80));
int x5 = int(random(80,100));
int x6 = int(random(100,120));
int x7 = int(random(120,140));
int x8 = int(random(140,160));
int x9 = int(random(160,180));
int x10 = int(random(180,200));

int y1 = int(random(0,900));
int y2 = int(random(0,840));
int y3 = int(random(0,930));
int y4 = int(random(0,580));
int y5 = int(random(0,900));
int y6 = int(random(0,1020));
int y7 = int(random(0,740));
int y8 = int(random(0,660));
int y9 = int(random(0,580));
int y10 = int(random(0,400));

//space

int x11 = int(random(200,220));
int x12 = int(random(220,240));
int x13 = int(random(240,260));
int x14 = int(random(260,280));
int x15 = int(random(280,300));
int x16 = int(random(300,320));
int x17 = int(random(320,340));
int x18 = int(random(340,360));
int x19 = int(random(360,380));
int x20 = int(random(380,400));

int y11 = int(random(0,900));
int y12 = int(random(0,800));
int y13 = int(random(0,900));
int y14 = int(random(0,990));
int y15 = int(random(0,610));
int y16 = int(random(0,500));
int y17 = int(random(0,340));
int y18 = int(random(0,650));
int y19 = int(random(0,770));
int y20 = int(random(0,200));

//space

int x21 = int(random(400,420));
int x22 = int(random(420,440));
int x23 = int(random(440,460));
int x24 = int(random(460,480));
int x25 = int(random(480,500));
int x26 = int(random(20,40));
int x27 = int(random(40,60));
int x28 = int(random(60,80));
int x29 = int(random(80,100));
int x30 = int(random(100,120));

int y21 = int(random(0,900));
int y22 = int(random(0,800));
int y23 = int(random(0,900));
int y24 = int(random(0,990));
int y25 = int(random(0,610));
int y26 = int(random(0,500));
int y27 = int(random(0,340));
int y28 = int(random(0,650));
int y29 = int(random(0,770));
int y30 = int(random(0,200));

// 30 - 60
int x31 = int(random(0,20));
int x32 = int(random(20,40));
int x33 = int(random(40,60));
int x34 = int(random(60,80));
int x35 = int(random(80,100));
int x36 = int(random(100,120));
int x37 = int(random(120,140));
int x38 = int(random(140,160));
int x39 = int(random(160,180));
int x40 = int(random(180,200));

int y31 = int(random(0,900));
int y32 = int(random(0,840));
int y33 = int(random(0,930));
int y34 = int(random(0,580));
int y35 = int(random(0,900));
int y36 = int(random(0,1020));
int y37 = int(random(0,740));
int y38 = int(random(0,660));
int y39 = int(random(0,580));
int y40 = int(random(0,400));

//space

int x41 = int(random(200,220));
int x42 = int(random(220,240));
int x43 = int(random(240,260));
int x44 = int(random(260,280));
int x45 = int(random(280,300));
int x46 = int(random(300,320));
int x47 = int(random(320,340));
int x48 = int(random(340,360));
int x49 = int(random(360,380));
int x50 = int(random(380,400));

int y41 = int(random(0,900));
int y42 = int(random(0,800));
int y43 = int(random(0,900));
int y44 = int(random(0,990));
int y45 = int(random(0,610));
int y46 = int(random(0,500));
int y47 = int(random(0,340));
int y48 = int(random(0,650));
int y49 = int(random(0,770));
int y50 = int(random(0,200));

//space

int x51 = int(random(400,420));
int x52 = int(random(420,440));
int x53 = int(random(440,460));
int x54 = int(random(460,480));
int x55 = int(random(480,500));
int x56 = int(random(20,40));
int x57 = int(random(40,60));
int x58 = int(random(60,80));
int x59 = int(random(80,100));
int x60 = int(random(100,120));

int y51 = int(random(0,900));
int y52 = int(random(0,800));
int y53 = int(random(0,900));
int y54 = int(random(0,990));
int y55 = int(random(0,610));
int y56 = int(random(0,500));
int y57 = int(random(0,340));
int y58 = int(random(0,650));
int y59 = int(random(0,770));
int y60 = int(random(0,200));


// END of Long Variable List
int sunx = -1000;
public void draw() {
  int y = arduino.analogRead(5);
  int button = arduino.analogRead(0);
  
  y=-4*y;
  if (y < -1000)
   y= -1000;
  if (y > -100)
  y= -120;
  if (y < -800)
  background(173, 216, 230);
  if( y > -800 && y < -500)
  background(220,240,242);
  if(y > -500 && y < -300)
  background(232,248,250);
  if(y > -300)
  background(255,255,255);
  
  if(button > 575)
  sunx = 50;
  if(button < 575)
  sunx = -1000;
  
  
  System.out.println(y);
  System.out.println(button);
  
  fill(240,220,44);
  ellipse(sunx,50,100,100);
  fill(255,255,255);
  
  //START of Snow
  ellipse(x1, y1+y, 10, 10);
  ellipse(x2, y2+y, 10, 10);
  ellipse(x3, y3+y, 10, 10);
  ellipse(x4, y4+y, 10, 10);
  ellipse(x5, y5+y, 10, 10);
  ellipse(x6, y6+y, 10, 10);
  ellipse(x7, y7+y, 10, 10);
  ellipse(x8, y8+y, 10, 10);
  ellipse(x9, y9+y, 10, 10);
  ellipse(x10, y10+y, 10, 10);
  
  ellipse(x11, y11+y, 10, 10);
  ellipse(x12, y12+y, 10, 10);
  ellipse(x13, y13+y, 10, 10);
  ellipse(x14, y14+y, 10, 10);
  ellipse(x15, y15+y, 10, 10);
  ellipse(x16, y16+y, 10, 10);
  ellipse(x17, y17+y, 10, 10);
  ellipse(x18, y18+y, 10, 10);
  ellipse(x19, y19+y, 10, 10);
  ellipse(x20, y20+y, 10, 10);
  
  ellipse(x21, y21+y, 10, 10);
  ellipse(x22, y22+y, 10, 10);
  ellipse(x23, y23+y, 10, 10);
  ellipse(x24, y24+y, 10, 10);
  ellipse(x25, y25+y, 10, 10);
  ellipse(x26, y26+y, 10, 10);
  ellipse(x27, y27+y, 10, 10);
  ellipse(x28, y28+y, 10, 10);
  ellipse(x29, y29+y, 10, 10);
  ellipse(x30, y30+y, 10, 10);
  
  ellipse(x31, y31+y, 10, 10);
  ellipse(x32, y32+y, 10, 10);
  ellipse(x33, y33+y, 10, 10);
  ellipse(x34, y34+y, 10, 10);
  ellipse(x35, y35+y, 10, 10);
  ellipse(x36, y36+y, 10, 10);
  ellipse(x37, y37+y, 10, 10);
  ellipse(x38, y38+y, 10, 10);
  ellipse(x39, y39+y, 10, 10);
  ellipse(x40, y40+y, 10, 10);
  
  ellipse(x41, y41+y, 10, 10);
  ellipse(x42, y42+y, 10, 10);
  ellipse(x43, y43+y, 10, 10);
  ellipse(x44, y44+y, 10, 10);
  ellipse(x45, y45+y, 10, 10);
  ellipse(x46, y46+y, 10, 10);
  ellipse(x47, y47+y, 10, 10);
  ellipse(x48, y48+y, 10, 10);
  ellipse(x49, y49+y, 10, 10);
  ellipse(x50, y50+y, 10, 10);
  
  ellipse(x51, y51+y, 10, 10);
  ellipse(x52, y52+y, 10, 10);
  ellipse(x53, y53+y, 10, 10);
  ellipse(x54, y54+y, 10, 10);
  ellipse(x55, y55+y, 10, 10);
  ellipse(x56, y56+y, 10, 10);
  ellipse(x57, y57+y, 10, 10);
  ellipse(x58, y58+y, 10, 10);
  ellipse(x59, y59+y, 10, 10);
  ellipse(x60, y60+y, 10, 10);
  // End of SNOW
  
  stroke(1);
  fill(255,255,255,255);
  ellipse(160,160,80,80);
  ellipse(340,160,80,80);
  ellipse(250,250,230,230);
  fill(0,0,0);
  ellipse(210,210,20,20);
  ellipse(290,210,20,20);
  ellipse(250,260,20,20);
  noFill();
  ellipse(250,270,60,60);
  arc(250, 270, 30, 30, 0, PI, OPEN);
}
