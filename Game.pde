import processing.sound.*;

SoundFile bet;
SoundFile sides;
SoundFile point;

PFont font;

Game1 game1;
Game2 game2;
Menu menu;

int level = 2;
Ball ball;
Score score;
Net net;
betkanan betR;
betkiri betL;


void setup() {
    size(1000, 600); 
    game1 = new Game1();
    game2 = new Game2();
    menu = new Menu(game1, game2);
    menu.setup();
    // membuat sound files
    bet = new SoundFile(this, "bet.wav");
    sides = new SoundFile(this, "pantul.wav");
    point = new SoundFile(this, "point.wav");
    //membuat font file
    font = createFont("LeelawadeeUI-Bold-48", 48);
}

void draw() { 
    if (menu.currentGame == 0) {
        menu.draw();
    } else if (menu.currentGame == 1) {
        game1.draw();
    } else if (menu.currentGame == 2) {
        game2.draw();
    }
}

void keyPressed() {
    menu.keyPressed();
}
