public void setup()
{
	size(700, 700);
	background(0);
}
public void draw()
{
	fill(255,255,255);
	sierpinski(150,600,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20)
	{
		triangle(x,y,x+len,y,x+(len/2),(float)(y-(len*sin(PI/3))));	
	}
	else 		
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,(int)(y-(len/2*sin(PI/3))),len/2);		
	}
}