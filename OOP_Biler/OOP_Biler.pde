color[] farver = new color[12];
int[] x_pos = new int[4];
int[] y_pos = new int[4];
int[] x_direction = new int[4];
int[] y_direction = new int[4];

int vel = 1;


void setup() {
  size(500, 500);
  noStroke();
  rectMode(CENTER);
  // Giver hver bil en forskellig farve
  for (int i = 0; i < farver.length; i++) {
    farver[i] = int(random(0, 255));
  }
  // Generere tilfældige start-positioner
  for (int g = 0; g < x_pos.length; g++) {
    x_pos[g] = int(random(0, width));
    for (int h = 0; h < y_pos.length; h++) {
      y_pos[h] = int(random(0, height));
    }
  }

  // Tildeler alle fremmad retning
  for (int j = 0; j < x_direction.length; j++) {
    x_direction[j] = 1;
    for (int k = 0; k < y_direction.length; k++) {
      y_direction[k] = 1;
    }
  }
}




void draw() {
  background(255);

  Bil Volvo = new Bil();
  Volvo.farve = color(farver[0], farver[1], farver[2]);
  Volvo.tegnBil(x_pos[0], y_pos[0]);

  Bil Audi = new Bil();
  Audi.farve = color(farver[3], farver[4], farver[5]);
  Audi.tegnBil(x_pos[1], y_pos[1]);

  Bil Toyota = new Bil();
  Toyota.farve = color(farver[6], farver[7], farver[8]);
  Toyota.tegnBil(x_pos[2], y_pos[2]);

  Bil Skoda = new Bil();
  Skoda.farve = color(farver[9], farver[10], farver[11]);
  Skoda.tegnBil(x_pos[3], y_pos[3]);

  for (int i = 0; i < 3; i++) {
    if (x_pos[i]<width) {
      x_pos[i] = x_pos[i] + (int(random(1, 3)) * x_direction[i]);
    } else {
      x_direction[i] *= -1;
    }
  }

  for (int i = 0; i < 3; i++) {
    if (y_pos[i]<height) {
      y_pos[i] = y_pos[i] + (int(random(1, 3)) * y_direction[i]);
    } else {
      y_direction[i] *= -1;
    }
  }
}
