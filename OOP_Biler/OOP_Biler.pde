class Bil {
  color farve;

  
  Hjul h = new Hjul();
  Lygter l = new Lygter();

  void tegnBil(float x, float y) {
    fill(farve);
    rect(x, y, 50, 20);
    h.tegnHjul();
  }
}

class Hjul {
  void tegnHjul(){
    fill(0);
    circle();
  }
}

class Lygter {
}

void setup() {
  size(500, 500);
  noStroke();
  rectMode(CENTER);
  float x;
  float y;
}

void draw() {
  background(255);
  
  Bil minBil = new Bil();
  minBil.farve = color(255, 0, 0);
  minBil.tegnBil(x,y);
}

void drive() {

}
