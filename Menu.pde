class Menu {
    Pingpong pingpong;
    Petunjuk petunjuk;
    int currentGame = 0; 

    Menu(Pingpong pingpong, Petunjuk petunjuk) {
        this.pingpong = pingpong;
        this.petunjuk = petunjuk;
    }

    void setup() {
        
    }

    void draw() {
        background(255); 
       
        fill(0);
        textSize(24);
        text("Main Menu", width/2 - 70, height/2 - 50);
        textSize(16);
        text("1. Mulai ", width/2 - 50, height/2);
        text("2. Petunjuk", width/2 - 50, height/2 + 20);
        text("3. Tentang", width/2 - 50, height/2 + 40);
        text("4. Keluar", width/2 - 50, height/2 + 60);
    }

    void keyPressed() {
        if (currentGame == 0) {
            if (keyCode == '1') {
                currentGame = 1;
                pingpong.setup();
            } else if (keyCode == '2') {
                currentGame = 2;
                petunjuk.setup();
            }
        }
    }
}
