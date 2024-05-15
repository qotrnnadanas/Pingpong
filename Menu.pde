class Menu {
    Pingpong pingpong;
    Petunjuk petunjuk;
    Tentang tentang;
    Setting setting; // Mendeklarasikan variabel instance setting

    int currentGame = 0;
    PFont menuFont;

    // Deklarasi variabel untuk tombol
    int buttonX, buttonY, buttonWidth, buttonHeight;
    String[] buttonLabels = {"Mulai", "Petunjuk", "Tentang", "Setting", "Keluar"};
    color buttonColor = color(51, 51, 51);
    color buttonHoverColor = color(102, 102, 102);

    Menu(Pingpong pingpong, Petunjuk petunjuk, Tentang tentang, Setting setting) {
        this.pingpong = pingpong;
        this.petunjuk = petunjuk;
        this.tentang = tentang;
        this.setting = setting; // Menyimpan referensi objek Setting
    }

    void setup() {
        menuFont = createFont("Arial", 24);
        textFont(menuFont);

        // Inisialisasi variabel untuk tombol
        buttonX = width/2 - 100;
        buttonY = height/2 - 80;
        buttonWidth = 200;
        buttonHeight = 40;
    }

    void draw() {
        background(#F0F0F0);
        fill(#333333);
        textAlign(CENTER, CENTER);
        textSize(48);
        text("Game Menu", width/2, height/4);

        // Gambar tombol
        for (int i = 0; i < buttonLabels.length; i++) {
            color buttonFill = buttonColor;
            if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
                mouseY >= buttonY + i * (buttonHeight + 20) && mouseY <= buttonY + buttonHeight + i * (buttonHeight + 20)) {
                buttonFill = buttonHoverColor;
            }
            fill(buttonFill);
            rect(buttonX, buttonY + i * (buttonHeight + 20), buttonWidth, buttonHeight, 10);
            fill(#FFFFFF);
            text(buttonLabels[i], buttonX + buttonWidth/2, buttonY + buttonHeight/2 + i * (buttonHeight + 20));
        }
    }

    void mousePressed() {
        // Cek jika mouse ditekan di area tombol
        for (int i = 0; i < buttonLabels.length; i++) {
            if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
                mouseY >= buttonY + i * (buttonHeight + 20) && mouseY <= buttonY + buttonHeight + i * (buttonHeight + 20)) {
                // Lakukan aksi sesuai tombol yang ditekan
                currentGame = i + 1;
                if (currentGame == 1) {
                    pingpong.setup();
                } else if (currentGame == 2) {
                    petunjuk.setup();
                } else if (currentGame == 3) {
                    tentang.setup();
                } else if (currentGame == 4) {
                    // Tidak perlu melakukan apapun, tampilan Pengaturan akan ditampilkan di draw()
                } else if (currentGame == 5) {
                    exit();
                }
            }
        }
    }
}
