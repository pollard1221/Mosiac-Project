PImage bgImage; // Declare a variable to hold the background image
PImage faceImage;
PImage[] images1; // HAIR
PImage[] images2; // LEFT EYE
PImage[] images3; // RIGHT EYE
PImage[] images4; // MOUTH
PImage[] images5; // NOSE
PImage[] images6; // EAR
PImage[] images7; // SHIRT
PImage[] images8; // EARRING
int currentIndex1 = 0; // Index of the current image in the HAIR
int currentIndex2 = 0; // Index of the current image in the LEFT EYE
int currentIndex3 = 0; // Index of the current image in the RIGHT EYE
int currentIndex4 = 0; // Index of the current image in the MOUTH
int currentIndex5 = 0; // Index of the current image in the NOSE
int currentIndex6 = 0; // Index of the current image in the EAR
int currentIndex7 = 0; // Index of the current image in the SHIRT
int currentIndex8 = 0; // Index of the current image in the EARRING
boolean stopFlipping1 = false; // Boolean to check if flipping should stop for the first set
boolean stopFlipping2 = false; // Boolean to check if flipping should stop for the second set
boolean stopFlipping3 = false; 
boolean stopFlipping4 = false; //MOUTH
boolean stopFlipping5 = false; //NOSE
boolean stopFlipping6 = false; //NOSE
boolean stopFlipping7 = false; //SHIRT
boolean stopFlipping8 = false; //SHIRT
int keyPressCount = 0; // Counter to track the number of key presses

void setup() {
  size(800, 850); // Double the width to fit two houses
  bgImage = loadImage("background.jpg");
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
  images5[1] = loadImage("nose2.png");
  images5[2] = loadImage("nose3.png");
  
  // Load the EAR
  images6 = new PImage[3]; // Assuming you have 3 images in the first set
  images6[0] = loadImage("rightear1.png");
  images6[1] = loadImage("rightear2.png");
  images6[2] = loadImage("rightear3.png");
  
  // Load the SHIRT
  images7 = new PImage[3]; // Assuming you have 3 images in the first set
  images7[0] = loadImage("shirt1.png");
  images7[1] = loadImage("shirt2.png");
  images7[2] = loadImage("shirt3.png");
  
  images8 = new PImage[3]; // Assuming you have 3 images in the first set
  images8[0] = loadImage("earring1.png");
  images8[1] = loadImage("earring2.png");
  images8[2] = loadImage("earring3.png");
 
}

void draw() {
  background(255); // Optional, you can remove this if you only want the background image
  image(bgImage, 0, 0, width, height);
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
    image(images2[currentIndex2], 160, 150, 500, 500); // Curls
    break;
  case 2:
    image(images2[currentIndex2], 140, 160, 600, 400); // Long hair
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
  image(images3[currentIndex3], 450, 340, 130, 150); // RIGHT EYE
  
  // Flip through the first set of images if not stopped
  if (!stopFlipping4) {
    currentIndex4 = (currentIndex4 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images4[currentIndex4], 330, 580, 160, 170); // MOUTH
  
  // Flip through the first set of images if not stopped
  if (!stopFlipping5) {
    currentIndex5 = (currentIndex5 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images5[currentIndex5], 360, 480, 100, 120); // NOSE
  
  // Flip through the first set of images if not stopped
  if (!stopFlipping6) {
    currentIndex6 = (currentIndex6 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images6[currentIndex6], 550, 500, 100, 150); // EAR
  
  if (!stopFlipping7) {
    currentIndex7 = (currentIndex7 + 1) % images1.length; // Cycle through the first set of images
  }
  
  switch (currentIndex7) {
  case 0:
    image(images7[currentIndex7], 160, 570, 500, 450); // HAIR
    break;
  case 1:
    image(images7[currentIndex7], 250, 670, 300, 250); // Curls
    break;
  case 2:
    image(images7[currentIndex7], 260, 710, 300, 400); // Long hair
    break; 
  }
  // Flip through the first set of images if not stopped
  if (!stopFlipping8) {
    currentIndex8 = (currentIndex8 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images8[currentIndex8], 190, 500, 50, 100); // EARRING
  
  
  //image(images7[currentIndex7], 160, 570, 500, 450); // EAR
  
  delay(700); // Delay to slow down the flipping, adjust as needed
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
  else if (keyPressCount == 7) {
    stopFlipping7 = true; // Stop flipping the second set of images on the second key press
  }
  else if (keyPressCount == 8) {
    stopFlipping8 = true; // Stop flipping the second set of images on the second key press
  }
}
