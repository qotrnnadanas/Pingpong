import processing.sound.*;

SoundFile bet;
SoundFile sides;
SoundFile point;
SoundFile backgroundSound;

PFont font;

Pingpong pingpong;
Petunjuk petunjuk;
Menu menu;
Tentang tentang;

int level = 2;
Ball ball;
Score score;
Net net;
betkanan betR;
betkiri betL;


void setup() {
    size(1000, 600); 
    pingpong = new Pingpong();
    petunjuk = new Petunjuk();
    tentang = new Tentang();
    menu = new Menu(pingpong, petunjuk, tentang);
    menu.setup();
    // membuat sound files
    bet = new SoundFile(this, "bet.wav");
    sides = new SoundFile(this, "pantul.wav");
    point = new SoundFile(this, "point.wav");
    backgroundSound = new SoundFile(this, "background_sound.mp3");
    backgroundSound.loop();
    //membuat font file
    font = createFont("LeelawadeeUI-Bold-48", 48);
}

void draw() { 
    if (menu.currentGame == 0) {
        menu.draw();
    } else if (menu.currentGame == 1) {
        pingpong.draw();
    } else if (menu.currentGame == 2) {
        petunjuk.draw();
    } else if (menu.currentGame == 3) {
        tentang.draw();
    } else if (menu.currentGame == 4) {
        exit();
    }
}

void keyPressed() {
    menu.keyPressed();
}
