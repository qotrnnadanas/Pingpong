class Tentang {
    float opacity = 0; // Variabel untuk mengontrol opasitas teks
    int buttonX, buttonY, buttonWidth, buttonHeight;
    color buttonColor = color(255, 255, 255); // Deklarasi variabel buttonColor

    void setup() {
        buttonX = width/2 - 100;
        buttonY = height - 100;
        buttonWidth = 200;
        buttonHeight = 40;
    }

    void draw() {
        background(51, 51, 51); // Latar belakang abu-abu gelap
        fill(255, opacity); // Warna teks putih dengan opasitas yang berubah
        textSize(24); // Ukuran teks 24
        textAlign(CENTER); // Teks rata tengah

        // Judul
        textSize(48);
        textFont(font);
        text("Tentang Permainan Ping Pong", width/2, 80);
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

        // Animasi teks deskripsi
        if (opacity < 255) {
            opacity += 2; // Menambah opasitas teks secara bertahap
        }

        // Tombol "Kembali"
        fill(buttonColor);
        rect(buttonX, buttonY, buttonWidth, buttonHeight, 10);
        fill(0);
        text("Kembali", buttonX + buttonWidth/2, buttonY + buttonHeight/2);
    }

    void mousePressed() {
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            menu.currentGame = 0; // Kembali ke menu utama
        }
    }
}
