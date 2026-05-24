/*
Zorba Oriana
Comision 2
tp2
mayo 2026
*/
PImage SuperMario,Fondo,Bowser,Luigi,Mario,Princesa,Toad;
PFont Fuente;
int PosYLogo,Pantalla,Frame,PosX;
boolean boton;

void setup (){
  size(640,480); 
  SuperMario = loadImage("data/Logo.png");
  Fondo = loadImage("data/Fondo.jpg");
  Mario = loadImage("data/Mario.png");
  Luigi = loadImage("data/Luigi.png");
  Bowser = loadImage("data/Bowser.png");
  Princesa = loadImage("data/Princesa.png");
  Toad = loadImage("data/Toad.png");
  Fuente = createFont("data/fuente.otf",24);
  PosYLogo = 100;
  PosX = -300;
  Frame = 0;
  boton = false;
  Pantalla = 1;
}

void draw (){
 image(Fondo,0,0,640,480);
 textFont(Fuente);
 image(SuperMario,80,PosYLogo,480,190);
 fill(0);
 println("ESTE ES LA PANTALLA",Pantalla);
 println("ESTE ES EL FRAMECOUNT",frameCount);
 println("ESTE ES EL FRAME",Frame);
 println("ESTE ES BOTON", boton);
 if(Pantalla == 1){
   fill(255);
   if(boton == false){
     text("play",265,320);  
   }else if(boton == true){
    if(PosYLogo > -250){
     PosYLogo = PosYLogo - 5;
     }else if (PosYLogo <= -250){
      Pantalla = 2;
      Frame = frameCount;
    }
   }
  }else if (Pantalla==2){
   textSize(18);
   text("Super Mario Bros. es un clásico videojuego de plataformas de desplazamiento lateral donde controlas a Mario (o su hermano Luigi).",PosX,50,640,300);
   image(Mario,PosX,330,150,150);
   if(frameCount < Frame + 64){
        PosX = PosX + 5;     
    } 
      if(frameCount > Frame + 304 && frameCount < Frame + 424){
        PosX = PosX - 5;  
        }else if(frameCount > Frame + 424){
          Pantalla = 3;
          PosX = -300;
          Frame= frameCount;
        }
      }else if (Pantalla==3){
       textSize(18);
       text("Deben avanzar por distintos mundos superando obstáculos, pisando enemigos y recolectando monedas para llegar al castillo final, derrotar al villano Bowser y rescatar a la Princesa Peach.",PosX,50,640,300);
       image(Luigi,PosX,320,120,160);
       if(frameCount < Frame + 64){
         PosX = PosX + 5;     
      } 
      if(frameCount > Frame + 304 && frameCount < Frame + 430){
        PosX = PosX - 5;  
        }else if(frameCount > Frame + 426){
          Pantalla = 4;
          PosX = -300;
          Frame= frameCount;
        }
      }else if (Pantalla==4){
         textSize(18);
         text("Es el poderoso rey de los Koopas, una raza de tortugas malvadas. Su objetivo es mantener secuestrada a la Princesa Peach, conquistar el Reino Champiñón y derrotar a Mario.",PosX,50,640,300);
         image(Bowser,PosX,355,157,125);
         if(frameCount < Frame + 64){
           PosX = PosX + 5;     
          } 
        if(frameCount > Frame + 304 && frameCount < Frame + 430){
          PosX = PosX - 5;  
        }else if(frameCount > Frame + 430){
          Pantalla = 5;
          PosX = -300;
          Frame= frameCount;
        }
      }else if (Pantalla==5){
         textSize(18);
         text("La Princesa Peach es la soberana del Reino Champiñón y necesita ser rescatada de las garras del villano Bowser.",PosX,50,640,300);
         image(Princesa,PosX,294,116,186);
         if(frameCount < Frame + 64){
           PosX = PosX + 5;     
          } 
        if(frameCount > Frame + 304 && frameCount < Frame + 430){
          PosX = PosX - 5;  
        }else if(frameCount > Frame + 430){
          Pantalla = 6;
          PosX = -300;
          Frame= frameCount;
        }
      }else if (Pantalla==6){
         textSize(18);
         text("Uno de los asistentes más leales de la Princesa Peacha. Y apareció al final de los castillos para dar la famosa frase: ¡Gracias Mario, pero nuestra princesa está en otro castillo!",PosX,50,640,300);
         image(Toad,PosX,348,95,132);
         if(frameCount < Frame + 64){
           PosX = PosX + 5;     
          } 
        if(frameCount > Frame + 304 && frameCount < Frame + 430){
          PosX = PosX - 5;  
        }else if(frameCount > Frame + 430){
          Pantalla = 7;
        }
      }else if (Pantalla == 7){
        reiniciar();  
      }
    }
void mousePressed(){
  if(mouseX >= 256 && mouseX <= 380){
    boton = true;
  }
}
    
void reiniciar (){
  PosYLogo = 100;
  PosX = -300;
  Frame = 0;
  boton = false;
  Pantalla = 1;  
}
    
    
