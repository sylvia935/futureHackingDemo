Flower [] flowers;
int nFlowers=20;

void setup(){
  //frameRate(100);
  surface.setSize(800,600);
  background(31, 40, 56);
  //generate flowers
  flowers = new Flower[nFlowers];
  for (int i = 0; i < nFlowers; i++){
    color c=color(25,random(125,255),random(125));
    flowers[i] = new Flower(random(width),random(height),10,c);
  }
}

void draw(){ 
  //noFill();
  background(31, 40, 56);
  // display flowers
  for (int i = 0; i < nFlowers; i++) { 
    flowers[i].display();
    flowers[i].move();
  }
}
