public void setup()
{
  size(1000, 1000);
  background(0);
}
public void draw()
{
  sierpinski(0, 500, 500); //original
}
int rightClicks =0;
public void keyPressed()//optional
{
  if (keyCode == RIGHT)
    rightClicks++;
    
  background(0);
  // top right
  sierpinski(500, 500, 250 + (10*rightClicks));


    // bottom left
  sierpinski(0, 1000, 100 + (1*rightClicks));



    // bottom right
  sierpinski(500, 1000, 250 + (100*rightClicks));
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    triangle(x, y, x+len, y, x+len/2, y-len);
  } else
  {

    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
