class Bil {
  color farve;

  Hjul h = new Hjul();
  Lygter l = new Lygter();

  void tegnBil(float x, float y) {
    fill(farve);
    rect(x, y, 50, 20);
    fill(0);
    quad(x-25, y-10, x+25, y-10, x+15, y-25, x-5, y-25);
    h.tegnHjul(x, y);
    l.tegnLygte(x, y);
  }
}

class Hjul {
  void tegnHjul(float x, float y) {
    fill(0);
    circle(x-20, y+10, 15);
    circle(x+20, y+10, 15);
  }
}

class Lygter {
  void tegnLygte(float x, float y) {
    fill(246, 255, 0);
    circle(x-25, y, 10);
  }
}
