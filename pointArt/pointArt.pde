PImage source;
color trackColor;
void setup() {
 size(720, 479);
 source = loadImage("nature.jpg");
 trackColor=color(255,255,255); 
 image(source, 0, 0, width, height);
}
void draw() {
 for (int y = 0; y < source.height; y++) {
   for (int x = 0; x < source.width; x++) {
     int loc = x + y * source.width; 
     float r1 = red (source.pixels[loc]);
     float g1 = green(source.pixels[loc]);
     float b1= blue (source.pixels[loc]);
     float r2 = red (trackColor);
     float g2 = green(trackColor);
     float b2= blue (trackColor);
     float d = dist(r1, g1, b1, r2, g2, b2);
     if(d<25){
       fill(trackColor);
       noStroke();
       ellipse(x,y,3,3);
     }
    }
   }  
}
void mousePressed() {
 int loc=mouseX+mouseY*source.width;
 trackColor = source.pixels[loc];
}
