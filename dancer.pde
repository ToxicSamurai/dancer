//ToxicSamura
//You may use/edit
//It may take a few seconds to load

//Import statement
import processing.video.*;

//Declare objects/variables
int fillColour = 0;
int fillSpeed = 5;

//Declare an object of type Movie named 'myMovie' to store our video file
Movie myMovie;

void setup() {
  //movie is 640 px x 360 px - make canvas the same size
  size(640, 360);
  //Load movie file into myMovie object
  myMovie = new Movie(this, "dancer.mov");
  //Set the video to continously plau on a loop
  myMovie.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  background(0);
  /*
  //Draw the current movie frame, with upper-left corner at upper-left of canvas
  image(myMovie, 0, 0);
  */
  //Load the pixels arrays of both our video frame, and our canvas
   myMovie.loadPixels();
   loadPixels();
   
  //Iterate through all o f the pixels of myMovie and find all the pixels that are above a specific brightness level
  for (int i = 0; i < myMovie.pixels.length; i++) {
    fillIncrease();
    //if the brightness of a specific movie pixel is above 200...
    if (brightness(myMovie.pixels[i]) > 220){
    //paint the corresponding canvas pixel purple
    pixels[i] = color(fillColour);
    }
  } 

  //update the canvas pixels with our new colours.
  updatePixels();
}

void fillIncrease(){
  fillColour = fillColour + fillSpeed;
  if(fillColour >= 255){
    fillSpeed = fillSpeed *-1;
  }
}
