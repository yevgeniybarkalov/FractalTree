private double fractionLength = .8; 
private int smallestBranch = 20; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	tree(320,380,smallestBranch,15);
}
public void tree (int x, int y, double branch, int n)
{
	if (n <= 0)
		return;
	double angle = Math.random()*Math.PI/4;
	int x1 = (int)(x+branch*Math.cos(-Math.PI/2-angle));
	int y1 = (int)(y+branch*Math.sin(-Math.PI/2-angle));
	int x2 = (int)(x+branch*Math.cos(-Math.PI/2+angle));
	int y2 = (int)(y+branch*Math.sin(-Math.PI/2+angle));
	line(x,y,x1,y1);
	line(x,y,x2,y2);
	tree(x1,y1,branch,n-1);
	tree(x2,y2,branch,n-1);
}