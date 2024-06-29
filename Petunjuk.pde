class Petunjuk {
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
        textAlign(CENTER); // Teks rata tengah

        // Judul
        textSize(32);
        textFont(font);
        text("Petunjuk Permainan", width/2, 80);
        textFont(font);
        textSize(12);

        // Deskripsi dan petunjuk
        String petunjuk = "Selamat datang di \"Game Ping Pong Sederhana\"!\n\nCara Bermain:\n\nKontrol Bet Kiri:\nGunakan tombol 'W' untuk menggerakkan bet kiri ke atas.\nGunakan tombol 'S' untuk menggerakkan bet kiri ke bawah.\n\nKontrol Bet Kanan:\nGunakan tombol panah 'atas' untuk menggerakkan bet kanan ke atas.\nGunakan tombol panah 'bawah' untuk menggerakkan bet kanan ke bawah.\n\nTujuan Permainan:\nTujuan utama permainan adalah memantulkan bola dengan bet Anda dan mencetak skor 20 untuk memenangkan pertandingan. \nSkor meningkat setiap kali bola melewati bet lawan dan mengenai sisi layar yang kosong. Permainan berakhir ketika salah satu pemain mencapai skor 20.\n\nAturan Permainan:\n- Jangan biarkan bola melewati bet Anda, atau lawan akan mencetak skor.\n\nMenangani Skor:\nSkor pemain ditampilkan di bagian atas layar. Perhatikan skor Anda dan usahakan untuk mencetak skor lebih tinggi dari lawan.\n\nSekarang, Anda siap untuk memulai permainan!\nNikmati pengalaman bermain ping pong yang seru dan jadilah yang terbaik!";

        // Menampilkan deskripsi
        textAlign(CENTER, CENTER);
        text(petunjuk, width/2, height/2);

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
