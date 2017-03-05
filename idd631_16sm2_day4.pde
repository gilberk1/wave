color[] palette = new color[6]; //<>//
int currentColor = 0;

void setup() {
  size(1600, 900);
  background(0);
  strokeWeight(2);
  stroke(255, 255, 255);
  noFill();
  palette[0] = color(228, 3, 3);
  palette[1] = color(255, 140, 0);
  palette[2] = color(255, 237, 0);
  palette[3] = color(0, 128, 38);
  palette[4] = color(0, 77, 255);
  palette[5] = color(117, 7, 135);
}

void draw() {
  background(0);
  
  //press a key and change the color
  if(keyPressed == true) {
    stroke(palette[currentColor]);
    currentColor++;
    if(currentColor == 6) {
      currentColor = 0;
    }
  }
  
  //create the wave and change the size of it
  for (int j = 0; j < height-200; j+=15) {
    for (float i = 0; i < width; i++) {
      float x = i;
      float wavelength = map(i, 0, width, 25, 75);
      float waveFactor = frameCount;
      float y = -100*sin(x/wavelength+waveFactor) + 105 + j;
      rect(x, y, 1, 1);
    }
  }
  
  saveFrame("wave-#######.png");
}
