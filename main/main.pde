Botton botton0 = new Botton();
Botton botton1 = new Botton();

void setup() {
  size(1000, 1000);
}

void draw() {
  background(255);

  botton0.botton(100, 100, 300, 100);
  botton1.botton(500, 100, 300, 100);

  botton0.drawBotton();
  botton1.drawBotton();
}
