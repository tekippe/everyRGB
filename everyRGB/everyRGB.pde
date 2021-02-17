/*
This sketch generates an image file for every possible color in the 8-bit RGB space
Created 2/27/2021 by Joseph Tekippe for and at the suggestion of my friend Raul Gomez Valverde
*/
void setup(){
  size(100, 100);//minimum size allowed by Processing
  noLoop();//do not loop the draw function
}

void draw(){
  int colorCount = 0; //How many total colors have we made?
  for(int r = 0;r<256;r++){//loop through red values
    for(int g = 0;g<256;g++){//for every red value, loop through green values
      for(int b = 0;b<256;b++){//for every green value, loop through blue values
        color curColor = color(r,g,b);//build a color from current values
        fill(curColor);//set fill value
        rect(0, 0, 100, 100);//draw a rectangle
        String redName = String.format("%03d", r);//pad each color val to 3 digits, convert to String
        String greenName = String.format("%03d", g);
        String blueName = String.format("%03d", b);
        String fileName = "pngs/"+redName+greenName+blueName+".png";//build filename from strings
        println("fileName = "+fileName);//save as png
        save(fileName);
      }
    }
  }
  
}
