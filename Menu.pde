class Menu {
    Pingpong pingpong;
    Petunjuk petunjuk;
    Tentang tentang;
    Setting setting;

    int currentGame = 0;
    PFont menuFont;
    PImage bgImage; // Deklarasi variabel untuk gambar background

    // Deklarasi variabel untuk tombol
    int buttonX, buttonY, buttonWidth, buttonHeight;
    String[] buttonLabels = {"MULAI", "PETUNJUK", "ABOUT", "SETTING", "KELUAR"};
    color buttonColor = color(#76CDFA);
    color buttonHoverColor = color(#709BF7);

    Menu(Pingpong pingpong, Petunjuk petunjuk, Tentang tentang, Setting setting) {
        this.pingpong = pingpong;
        this.petunjuk = petunjuk;
        this.tentang = tentang;
        this.setting = setting;
    }

    void setup() {
        menuFont = createFont("Arial", 24);
        textFont(menuFont);

        // Memuat gambar background
        bgImage = loadImage("bgImage2.png");

        // Inisialisasi variabel untuk tombol
        buttonX = 130;
        buttonY = height/2 - 80;
        buttonWidth = 200;
        buttonHeight = 40;
    }

    void draw() {
        image(bgImage, 0, 0); // Menampilkan gambar background

        textAlign(CENTER, CENTER);
        textSize(24);

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