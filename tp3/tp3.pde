PImage miImagen;
int cant = 16;
int tam;
boolean click;



void setup(){

  size (800,400);
  noStroke();
  miImagen = loadImage("imagen25.jpg");
  click = false;
  
  tam = width / cant;
  

}


void draw(){
 background(255);
   
  image(miImagen,0,0,400,400);
 if(mousePressed)
   fill(random(255), random(255), random(255));
  
   for (int i = 0; i < cant; i++) {      // filas
    for (int j = 0; j < cant; j++) {    // columnas
         if(mousePressed){
   fill(random(255), random(255), random(255));
     }else if(click == false){
        fill(200);
      }else if(click){
        fill(random(255));  
      }
       rect(400 + j * tam, i * tam, tam, tam); //cuadrado grande
      if(click == false){
        fill(0);
      }else if(click){
        fill(random(255));  
      }
     
 if(mousePressed){
   fill(random(255), random(40), random(240));
     }else if(click == false){
        fill(255);
      }else if(click){
        fill(random(255));  
      }
       rect(400 + j*tam + tam/2, i*tam, tam/2, tam/2); // cuadrado chico
      if(mousePressed){
   fill(random(255), random(255), random(255));
     }else if(click == false){
        fill(0);
      }else if(click){
        fill(random(255));  
      }
       triangle( 400 + j*tam, i*tam + tam/2,
                400 + j*tam + tam/2, i*tam,
                400 + j*tam + tam/2, i*tam + tam/2);
    
      triangle( 400 + j*tam + tam/2,   i*tam + tam, 
                400 + j*tam + tam/2,     i*tam + tam/2,
                400 + j*tam + tam, i*tam + tam/2); 
                 
                 
       rect(400 + j*tam, i*tam + tam/2, tam/2, tam/2);
      
  
 }
}
}

void mouseClicked(){
 click = !click;
}
