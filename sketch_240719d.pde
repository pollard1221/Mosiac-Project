PImage[] images1; // Array to hold the first set of images
PImage[] images2; // Array to hold the second set of images
int currentIndex1 = 0; // Index of the current image in the first set
int currentIndex2 = 0; // Index of the current image in the second set
boolean stopFlipping1 = false; // Boolean to check if flipping should stop for the first set
boolean stopFlipping2 = false; // Boolean to check if flipping should stop for the second set
int keyPressCount = 0; // Counter to track the number of key presses

void setup() {
  size(800, 850); // Double the width to fit two houses
  
  // Load the first set of images
  images1 = new PImage[3]; // Assuming you have 3 images in the first set
  images1[0] = loadImage("background1.jpg");
  images1[1] = loadImage("background2.jpg");
  images1[2] = loadImage("background3.jpg");

  // Load the second set of images
  images2 = new PImage[3]; // Assuming you have 3 images in the second set
  images2[0] = loadImage("background4.jpg");
  images2[1] = loadImage("background5.jpg");
  images2[2] = loadImage("background6.jpg");
}

void draw() {
  background(255); // Optional, you can remove this if you only want the background image
  
  // Flip through the first set of images if not stopped
  if (!stopFlipping1) {
    currentIndex1 = (currentIndex1 + 1) % images1.length; // Cycle through the first set of images
  }
  image(images1[currentIndex1], 0, 0, 100, 100); // Display the current image from the first set on the left half

  // Flip through the second set of images if not stopped
  if (!stopFlipping2) {
    currentIndex2 = (currentIndex2 + 1) % images2.length; // Cycle through the second set of images
  }
  image(images2[currentIndex2], width / 2, 0, 100, 100); // Display the current image from the second set on the right half
  
  delay(200); // Delay to slow down the flipping, adjust as needed
}

void keyPressed() {
  keyPressCount++; // Increment the key press counter
  
  if (keyPressCount == 1) {
    stopFlipping1 = true; // Stop flipping the first set of images on the first key press
  } else if (keyPressCount == 2) {
    stopFlipping2 = true; // Stop flipping the second set of images on the second key press
  }
}
