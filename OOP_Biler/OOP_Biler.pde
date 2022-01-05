color[] farver = new color[12];


void setup() {
  size(500, 500);
  noStroke();
  rectMode(CENTER);
<<<<<<< Updated upstream
  float x = 0;
  float y = 0;
=======

  for (int i = 0 ; i< farver.length; i++){
    farver[i] = int(random(0,255));
  }
  
>>>>>>> Stashed changes
}

void draw() {
  background(255);

  Bil Volvo = new Bil();
  Volvo.farve = color(farver[0],farver[1],farver[2]);
  Volvo.tegnBil(50, 50);
  
  Bil Audi = new Bil();
  Audi.farve = color(farver[3],farver[4],farver[5]);
  Audi.tegnBil(100, 100);
  
  Bil Toyota = new Bil();
  Toyota.farve = color(farver[6],farver[7],farver[8]);
  Toyota.tegnBil(200, 200);
  
  Bil Skoda = new Bil();
  Skoda.farve = color(farver[9],farver[10],farver[11]);
  Skoda.tegnBil(300, 300);
}

void drive() {
  
}
