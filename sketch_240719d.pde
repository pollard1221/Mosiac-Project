//PImage bgImage; // Declare a variable to hold the background image
PImage faceImage;
PImage[] images1; // HAIR
PImage[] images2; // LEFT EYE
PImage[] images3; // RIGHT EYE
PImage[] images4; // MOUTH
PImage[] images5; // NOSE
PImage[] images6; // EAR
int currentIndex1 = 0; // Index of the current image in the HAIR
int currentIndex2 = 0; // Index of the current image in the LEFT EYE
int currentIndex3 = 0; // Index of the current image in the RIGHT EYE
int currentIndex4 = 0; // Index of the current image in the MOUTH
int currentIndex5 = 0; // Index of the current image in the NOSE
int currentIndex6 = 0; // Index of the current image in the EAR
boolean stopFlipping1 = false; // Boolean to check if flipping should stop for the first set
boolean stopFlipping2 = false; // Boolean to check if flipping should stop for the second set
boolean stopFlipping3 = false; 
boolean stopFlipping4 = false; //MOUTH
boolean stopFlipping5 = false; //NOSE
boolean stopFlipping6 = false; //NOSE
int keyPressCount = 0; // Counter to track the number of key presses

void setup() {
  size(800, 850); // Double the width to fit two houses
  //bgImage = loadImage("background.jpg");
  faceImage = loadImage("Face.png");

  // Load HAIR
  images2 = new PImage[3]; // Assuming you have 3 images in the second set
  images2[0] = loadImage("hair1.png");
  images2[1] = loadImage("hair2.png");
  images2[2] = loadImage("hair3.png");

  // Load the eyeleft
  images1 = new PImage[3]; // Assuming you have 3 images in the first set
  images1[0] = loadImage("eyeleft1.png");
  images1[1] = loadImage("eyeleft2.png");
  images1[2] = loadImage("eyeleft3.png");
  
  // Load the eyeright
  images3 = new PImage[4]; // Assuming you have 3 images in the first set
  images3[0] = loadImage("eyeright1.png");
  images3[1] = loadImage("eyeright2.png");
  images3[2] = loadImage("eyeright3.png");
  images3[3] = loadImage("eyeright4.png");
  
  // Load the MOUTH
  images4 = new PImage[3]; // Assuming you have 3 images in the first set
  images4[0] = loadImage("mouth1.png");
  images4[1] = loadImage("mouth2.png");
  images4[2] = loadImage("mouth3.png");
  
  // Load the NOSE
  images5 = new PImage[3]; // Assuming you have 3 images in the first set
  images5[0] = loadImage("nose1.png");
  images5[1] = loadImage("mouth2.png");
  images5[2] = loadImage("mouth3.png");
  
  // Load the EAR
  images6 = new PImage[3]; // Assuming you have 3 images in the first set
  images6[0] = loadImage("nose1.png");
  images6[1] = loadImage("rightear2.png");
  images6[2] = loadImage("mouth3.png");
 
}

void draw() {
  background(255); // Optional, you can remove this if you only want the background image
  //image(bgImage, 0, 0, width, height);
  image(faceImage, width/2 - 180, height/2 -250, 400, 700);


  // Flip through the second set of images if not stopped
  if (!stopFlipping2) {
    currentIndex2 = (currentIndex2 + 1) % images2.length; // Cycle through the second set of images
  }

  switch (currentIndex2) {
  case 0:
    image(images2[currentIndex2], 200, 60, 450, 450); // HAIR
    break;
  case 1:
    image(images2[currentIndex2], 180, 200, 500, 500); // Curls
    break;
  case 2:
    image(images2[currentIndex2], 150, 250, 600, 400); // Long hair
    break; 
  }

  //image(images2[currentIndex2], 200, 60, 450, 450); // HAIR

  // Flip through the first set of images if not stopped
  if (!stopFlipping1) {
    currentIndex1 = (currentIndex1 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images1[currentIndex1], 250, 400, 150, 100); // LEFT EYE
  
  // Flip through the first set of images if not stopped
  if (!stopFlipping3) {
    currentIndex3 = (currentIndex3 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images3[currentIndex3], 450, 380, 150, 100); // RIGHT EYE
  
  // Flip through the first set of images if not stopped
  if (!stopFlipping4) {
    currentIndex4 = (currentIndex4 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images4[currentIndex5], 330, 580, 160, 170); // MOUTH
  
  // Flip through the first set of images if not stopped
  if (!stopFlipping5) {
    currentIndex5 = (currentIndex5 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images5[currentIndex5], 360, 480, 100, 120); // NOSE
  
  // Flip through the first set of images if not stopped
  if (!stopFlipping5) {
    currentIndex6 = (currentIndex6 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images6[currentIndex6], 550, 400, 100, 120); // EAR
  
  delay(500); // Delay to slow down the flipping, adjust as needed
}

void keyPressed() {
  keyPressCount++; // Increment the key press counter

  if (keyPressCount == 1) {
    stopFlipping1 = true; // Stop flipping the first set of images on the first key press
  } else if (keyPressCount == 2) {
    stopFlipping2 = true; // Stop flipping the second set of images on the second key press
  }
  else if (keyPressCount == 3) {
    stopFlipping3 = true; // Stop flipping the second set of images on the second key press
  }
  else if (keyPressCount == 4) {
    stopFlipping4 = true; // Stop flipping the second set of images on the second key press
  }
  else if (keyPressCount == 5) {
    stopFlipping5 = true; // Stop flipping the second set of images on the second key press
  }
  else if (keyPressCount == 6) {
    stopFlipping6 = true; // Stop flipping the second set of images on the second key press
  }
}
