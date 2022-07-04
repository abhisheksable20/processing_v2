/**
 * Blur. 
 * 
 * A low-pass filter blurs an image. This program analyzes every
 * pixel in an image and blends it with the neighboring pixels
 * to blur the image. 
 */

float v = 1.0 / 9.0;
float[][] kernel = {{ v, v, v }, 
                    { v, v, v }, 
                    { v, v, v }};
                    
PImage img;

void setup() {
  size(800, 600);
  img = loadImage("frog.jpg"); // Load the original image
  noLoop();
} 

void draw() {
  image(img, 0, 0); // Displays the image from point (0,0) 
  img.loadPixels();

  // Create an opaque image of the same size as the original
  PImage edgeImg = createImage(img.width, img.height, RGB);

  // Loop through every pixel in the image
  for (int y = 1; y < img.height-1; y++) {   // Skip top and bottom edges
    for (int x = 1; x < img.width-1; x++) {  // Skip left and right edges
      float redSum = 0; // Kernel sum for this pixel
      float greenSum = 0;
      float blueSum = 0;
      for (int ky = -1; ky <= 1; ky++) {
        for (int kx = -1; kx <= 1; kx++) {
          // Calculate the adjacent pixel for this kernel point
          int pos = (y + ky)*img.width + (x + kx);
          // Image is grayscale, red/green/blue are identical
          float red = red(img.pixels[pos]);
          float green = green(img.pixels[pos]);
          float blue = blue(img.pixels[pos]);
          
          redSum += kernel[ky+1][kx+1] * red;
          greenSum += kernel[ky+1][kx+1] * green;
          blueSum += kernel[ky+1][kx+1] * blue;
        }
      }
      // For this pixel in the new image, set the gray value
      // based on the sum from the kernel
      edgeImg.pixels[y*img.width + x] = color(redSum,greenSum,blueSum);
    }
  }
  // State that there are changes to edgeImg.pixels[]
  edgeImg.updatePixels();

  image(edgeImg, 0, 0); // Draw the new image
}
