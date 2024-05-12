class Menu {
    Pingpong pingpong;
    Petunjuk petunjuk;
    Tentang tentang;
    int currentGame = 0;
    PFont menuFont;

    Menu(Pingpong pingpong, Petunjuk petunjuk, Tentang tentang) {
        this.pingpong = pingpong;
        this.petunjuk = petunjuk;
        this.tentang = tentang;
    }

    void setup() {
        menuFont = createFont("Arial", 24);
        textFont(menuFont);
    }

    void draw() {
        background(#F0F0F0);
        fill(#333333);
        textAlign(CENTER, CENTER);
        textSize(36);
        text("Main Menu", width/2, height/4);
        textSize(24);
        text("1. Mulai", width/2, height/2 - 40);
        text("2. Petunjuk", width/2, height/2);
        text("3. Tentang", width/2, height/2 + 40);
        text("4. Keluar", width/2, height/2 + 80);
    }

    void keyPressed() {
        if (currentGame == 0) {
            if (keyCode == '1') {
                currentGame = 1;
                pingpong.setup();
            } else if (keyCode == '2') {
                currentGame = 2;
                petunjuk.setup();
            } else if (keyCode == '3') {
                currentGame = 3;
                tentang.setup();
            } else if (keyCode == '4') {
                currentGame = 4;
                // Tambahkan kode untuk keluar dari aplikasi
            }
        }
    }
}
