int lightx1;
int lighty1;
int lightx2;
int lighty2;
float health = 100;
void setup()
{
  size(700,700);
  frameRate(5);
}
void draw()
{
  background(0);
  if(mousePressed){
    electrocute();
  }
  president();
  healthbar();
}
void mousePressed()
{
  
  lightx1 = (int)(Math.random() * 150) + 275;
  lighty1 = 500;
  lightx2 = lightx1;
  lighty2 = 500;
  while(lighty2 > 0){
    lightx2 = lightx1 + (int)(Math.random() * 11) - 5;
    lighty2 = lighty1 - (int)(Math.random() * 15);
    stroke(255);
    line(lightx1,lighty1,lightx2,lighty2);
    lightx1 = lightx2;
    lighty1 = lighty2;
  }
  
}
void electrocute(){
  fill(255,255,0);
  ellipse(350,500,300,300);
  fill(255,255,0);
  for (float i = 0; i <= 12; i += 0.5){
    triangle(350 + (150 * cos(i)),  500 - (150 * sin(i)), 350 + (150 * cos(i + 2)), 500 - (150 * sin(i + 2)), 350 + (200 * cos(i + 1)), 500 - (200 * sin(i + 1)));
  }
  health -= 0.05;
}
void healthbar(){
  float calculate = 600 * (health/100);
  fill(255,0,0);
  rect(50,50,calculate,50);
  noFill();
  stroke(255);
  rect(50,50,600,50);
  fill(255);
  textSize(30);
  text("Health",300,90);
}
void president(){
  stroke(0);
  fill(200,200,200);
  rect(275,390,150,100);
  fill(255);
  ellipse(350,500,150,200);
  //eyes
  fill(0);
  ellipse(320,450,30,30);
  ellipse(380,450,30,30);
  //mouth
  arc(350,525,100,100,0,PI);
}



