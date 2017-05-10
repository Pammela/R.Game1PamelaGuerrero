//CLICK ANY KEY TO STAR GAME
int ID = 0;
int ID1 = -1;
int ID2 = -1;
int cx = 0;
int cy = 0;
int background = 0;
int Number = 1;
int Turn = 1;
String Elemento[] = {"DARKNESS","LIGHT","HUNGER"};
int PJ1x = 10;
int PJ1y =250;
int PJ2x = 900;
int PJ2y = 0;
Fight HI;
Fight CROW;
Fight KOI;
Fight F;
int xatack=0;
int yatack = 30;
int xlife = 590;
int ylife = 30;

 void setup(){
  size(1010,500);
  background(185);
  F = new Fight ("F", 100, 500, 15, 3, 0);
  HI = new Fight ("HI", 100, 10, 15, 3, 0);
  CROW = new Fight ("CROW", 100, 17, 20, 0, 1);
  KOI= new Fight ("KOI", 100, 12, 22, 2, 2);
}

void draw(){
  if(background == 0){
      if(key== 0){
  background (1);
  //------
  textSize(100);
  fill(173,50,random(245));
  text(" PζИG ", 500, 250, 3);
  textSize(14);
  textAlign(CENTER);
  fill(203,random(280),200);
  text("SŦ∂RŦ G∂MЭ",500,300);//2
  }
      else{
        key= 0;
        background=1;
      }
    }
    
    if(background==1){
  background (212, 186, 235); 
  fill(1);
  rect(100,230,810,170,10,10,10,10);
  rect(320,30,510,170,10,10,10,10);
  noStroke();
  fill(1,100);
  
  rect(700,-250,80,300,100);
  fill(random(264),103,253);
  rect(cx,cy,100,200,10,10,10,10);
  //
  textSize(16);
  fill(#DC92ED);
  text(" Choose with 'z' and 'x' to move, click 'enter' to star ", 570, 100, 5);
  textSize(50);
  fill(random(264),103,253);
  text(" ßOИИY L∂SS ", 500, 280, 5);
  fill(#DC92ED);
  textSize(16);
  text("THE GIRL POWER IS HERE", 500, 300);
 
  fill(#C792ED);
  text("These fabulous girls are in a contest to show who is the best, also KOI, the devil entity participate too.",500,340);
  text("Fight each other to be the winner in this contest.",500,360);
  text("Use 'a' and 's' to shoot your magic powers. Don't lose.", 500,380);
     
      HI.D(0, 10,50,0);
      CROW.D(1,100, 0,5);
      KOI.D(2, 90, 0,10);
     
      
      if(ID1==-1){
       fill(random(264),103,253);
        text("PLAYER 1", 380, 100);
      }
      if(ID2==-2){
        fill(random(264),103,253);
        text("PLAYER 2", 380, 100);
      }
    }
    
    if(background==2){
      background(255,203,203);
      fill(1);
      rect(0,350,1100,400);
      s();
      F.D(3,0,0,0);
       HI.Dlife();
      CROW.Dlife();
      HI.D(ID1,PJ1x,PJ1y,1); //personaje,posicion en x, posicion en y, jugador
      CROW.D(ID2,PJ2x,PJ2y,2);
    
       if(CROW.lifu>0 && HI.lifu>0){
        if(key=='a'){
          if(Turn==1) HI.atack1();
          if(Turn==2) CROW.atack1();
        }
        if(key=='s'){
          if(Turn==1) HI.atack2();
          if(Turn==2) CROW.atack2();
        }
      
      }
      if(HI.lifu<=0){
        textSize(32); 
        fill(#DC92ED);
        text("GAME OVER \nWIN PLAYER 2 \nPress 'b' to rest star", -400, -50);
      }
      if(CROW.lifu<=0){
        textSize(32); 
        fill(#DC92ED);
        text("GAME OVER \nWIN PLAYER 1 \nPress b to rest star", -400, -50);
      }
    }
}