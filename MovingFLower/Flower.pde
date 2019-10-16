
class Flower{
  
    //parameters
    color flowerColor;
    float centerX, centerY, circleR;
    int nBrunches = 10;
    float brunchLength = 15;
    float flowerRotation=0;
    float rotation=0;
    
    //initialize 
  Flower(float x, float y, float w, color c){
    centerX = x;
    centerY = y;
    flowerColor = c;
    circleR = w;
    flowerRotation = 2*PI/nBrunches;
  }
  
  //functions
  void display(){
    pushMatrix();
    translate(centerX, centerY); 
    rotate(rotation);
    for (int i = 0; i < nBrunches; i++){
      rotate(flowerRotation);
      stroke(200);
      strokeWeight(1);
      line(0,0,brunchLength,brunchLength);
      fill(flowerColor);
      ellipse(brunchLength,brunchLength,circleR,circleR);
      
    }
    popMatrix();


  }
  
  void move(){
    rotation+=random(0.1);
  }
  
}
