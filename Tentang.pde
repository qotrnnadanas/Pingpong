class Tentang {
    int buttonX, buttonY, buttonWidth, buttonHeight;
    color buttonColor = color(#76CDFA); // Deklarasi variabel buttonColor
    color buttonHoverColor = color(#709BF7); // Deklarasi variabel buttonHoverColor

    void setup() {
        buttonX = width/2 - 100;
        buttonY = height - 100;
        buttonWidth = 200;
        buttonHeight = 40;
    }

    void draw() {
        background(#1A5CA8); // Latar belakang biru
        fill(255); // Warna teks putih
        textSize(24); // Ukuran teks 24
        textAlign(CENTER); // Teks rata tengah

        // Judul
        textSize(48);
        textFont(font);
        text("About", width/2, 80);
        textFont(font); 
        textSize(24);

        // Deskripsi
        String deskripsi = "Permainan Ping Pong Sederhana ini dibuat sebagai proyek pembelajaran.\n\n"
                         + "Dibuat oleh:\n"
                         + "Taufiq Dwi Aziz \t\t21.11.4342\nQotrun Nada Narulloh \t\t21.11.4354\nZulaicho Oktafreza Wardana \t21.11.4360\nFajar Kurniawan \t\t21.11.4383\nFauzi Ilham Darmawan \t\t21.11.4394\n"
                         + "Teknologi yang digunakan:\n"
                         + "- Processing\n"
                         + "- Java\n\n"
                         + "Versi: 1.0\n"
                         + "Tanggal Rilis: " + day() + "/" + month() + "/" + year();

        // Menampilkan deskripsi
        textAlign(CENTER, CENTER);
        text(deskripsi, width/2, height/2);

        // Tombol "Kembali"
        color buttonFill = buttonColor;
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            buttonFill = buttonHoverColor;
        }
        fill(buttonFill);
        rect(buttonX, buttonY, buttonWidth, buttonHeight, 10);
        fill(#FFFFFF);
        text("Kembali", buttonX + buttonWidth/2, buttonY + buttonHeight/2);
    }

    void mousePressed() {
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            menu.currentGame = 0; // Kembali ke menu utama
        }
    }
}
