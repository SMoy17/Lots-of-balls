int count = 100; 


//declare and initialize arrays
float[] x=new float[count];
float[] y=new float[count];
float[] velX=new float[count];
float[] velY=new float[count];
float[] diam=new float[count];


void setup() {
  //set size of canvas
  size(800, 600);
  for(int i = 0; i < count; i++) {

    //initialize variables
    x[i] = random(width);
    y[i] = random(height);
    diam[i] = 9;
    velX[i] = random(-2, 2);
    velY[i] = random(-2, 2);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  for (int i = 0; i < count; i++) {

    //draw ball
    fill(random(255), random(255), random(255));
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];
    x[i] += velX[i];
    y[i] += velY[i];


    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);  //if the ball hits the top wall, assign x velocity the negative version of itself
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);  //if the ball hits the bottom wall, assign x velocity the positive version of itself
    }
  }
}