private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(36, 192, 209);   
  noFill();
  curve(200,300,200,275,250,250,150,150);
  line(200,300,250,300);
  curve(230,300,200,325,250,350,150,150);
  fill(161, 173, 162);
  noStroke();
  ellipse(100,300,150,80);
  fill(237, 118, 107);
  ellipse(145,310,30,20);
  fill(0);
  ellipse(125,300,15,10);
  ellipse(165,300,15,10);
  noFill();
  stroke(18, 161, 25);
  strokeWeight(15);
  line(320,480,320,380);   
  drawBranches(320,380,100,3*Math.PI/2,12);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle,int r) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  double smallerLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2)+x);
  int endY2 = (int)(branchLength*Math.sin(angle2)+y);
  strokeWeight(r);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(branchLength>smallestBranch){
    drawBranches(endX1,endY1,branchLength/2,angle+0.4,r-3);
    drawBranches(endX2,endY2,branchLength/2,angle+0.4,r-3);
  }
} 
