void setup(){
  size(500,500);
  for(int x = 0; x < width; x+=160){
    for(int y = 0; y < height; y+=30){
      buildScale(x,y);
    }
  }
  for(int x = 20; x < width; x+=20){
    for(int y = 0; y < height; y+=30){
      buildScale(x,y);
    }
  }



  
}


//scale to create illusion of 3D depth 

void buildScale(int x, int y){
  int tWidth = 10;
  int subx = x;
  double red = 255;

  double c = Math.random();
  double a = Math.random();
  double full = Math.random();
  while (subx < x+40){
    pushMatrix();
    noFill();
    if(full < .3)
      stroke((float) red- 75,0,0);
    else if (c < .1)
      stroke((float) red, (float) red-10,0);
    else stroke((float) red,0,0);
    triangle(subx,y, subx+40 , y, subx+20, y - 40);
    popMatrix();
    tWidth+=20;
    subx++;
    if(a < .3)
      red-=3;
    red-=10;
  }
}



