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
Setting setting;

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
    setting = new Setting();
    menu = new Menu(pingpong, petunjuk, tentang, setting);
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
    // Switch between game states
    switch (menu.currentGame) {
        case 0:
            menu.draw();
            break;
        case 1:
            pingpong.draw();
            if (ball.kembali == true) {
                menu.currentGame = 0;
                }
            break;
        case 2:
            petunjuk.draw();
            break;
        case 3:
            tentang.draw();
            break;
        case 4:
            setting.display();
            setting.updateVolume();
            break;
        case 5:
            exit();
            break;
        default:
            println("Unknown game state: " + menu.currentGame);
            break;
    }
}

void mousePressed() {
    switch (menu.currentGame) {
        case 0:
            menu.mousePressed();
            break;
        case 1:
            ball.mousePressed(); // Handle button click in the game
            break;
        case 2:
            petunjuk.mousePressed();
            break;
        case 3:
            tentang.mousePressed();
            break;
        case 4:
            setting.updateVolume();
            setting.mousePressed();
            break;
        default:
            println("Unknown game state: " + menu.currentGame);
            break;
    }
}