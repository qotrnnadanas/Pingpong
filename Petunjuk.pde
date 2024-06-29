class Petunjuk {
    int buttonX, buttonY, buttonWidth, buttonHeight;
    int upButtonX, upButtonY, upButtonWidth, upButtonHeight;
    int downButtonX, downButtonY, downButtonWidth, downButtonHeight;
    color buttonColor = color(#76CDFA);
    color buttonHoverColor = color(#709BF7);
    int textY = 200; // Posisi awal teks petunjuk
    int textSpeed = 10; // Kecepatan pergerakan teks

    void setup() {
        size(1000, 600);
        buttonX = width/2 - 100;
        buttonY = height - 100;
        buttonWidth = 200;
        buttonHeight = 40;
        upButtonX = width - 100;
        upButtonY = 100; // Posisi tombol "Naik" 
        upButtonWidth = 40;
        upButtonHeight = 40;
        downButtonX = width - 100;
        downButtonY = 450; // Posisi tombol "Turun" 
        downButtonWidth = 40;
        downButtonHeight = 40;
    }

    void draw() {
        background(#1A5CA8);
        fill(255);
        textAlign(CENTER);

        // Judul
        textSize(32);
        textFont(font);
        text("Petunjuk Permainan", width/2, 80);
        textFont(font);
        textSize(24);

        // Deskripsi dan petunjuk
        String petunjuk = "Selamat datang di \"Game Ping Pong Sederhana\"!\n\nCara Bermain:\n\nKontrol Bet Kiri:\nGunakan tombol 'W' untuk menggerakkan bet kiri ke atas.\nGunakan tombol 'S' untuk menggerakkan bet kiri ke bawah.\n\nKontrol Bet Kanan:\nGunakan tombol panah 'atas' untuk menggerakkan bet kanan ke atas.\nGunakan tombol panah 'bawah' untuk menggerakkan bet kanan ke bawah.\n\nTujuan Permainan:\nTujuan utama permainan adalah memantulkan bola\n dengan bet Anda dan mencetak skor 20 untuk memenangkan pertandingan. \nSkor meningkat setiap kali bola melewati bet lawan dan mengenai sisi layar yang kosong.\n Permainan berakhir ketika salah satu pemain mencapai skor 20.\n\nAturan Permainan:\n- Jangan biarkan bola melewati bet Anda, atau lawan akan mencetak skor.\n\nMenangani Skor:\nSkor pemain ditampilkan di bagian atas layar. Perhatikan skor Anda\n dan usahakan untuk mencetak skor lebih tinggi dari lawan.\n\nSekarang, Anda siap untuk memulai permainan!\nNikmati pengalaman bermain ping pong yang seru dan jadilah yang terbaik!";

        // Menampilkan deskripsi
        textAlign(CENTER, CENTER);
        text(petunjuk, width/2, textY);

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

        // Tombol "Naik"
        buttonFill = buttonColor;
        if (mouseX >= upButtonX && mouseX <= upButtonX + upButtonWidth &&
            mouseY >= upButtonY && mouseY <= upButtonY + upButtonHeight) {
            buttonFill = buttonHoverColor;
        }
        fill(buttonFill);
        rect(upButtonX, upButtonY, upButtonWidth, upButtonHeight, 10);
        fill(#FFFFFF);
        text("⬆", upButtonX + upButtonWidth/2, upButtonY + upButtonHeight/2);

        // Tombol "Turun"
        buttonFill = buttonColor;
        if (mouseX >= downButtonX && mouseX <= downButtonX + downButtonWidth &&
            mouseY >= downButtonY && mouseY <= downButtonY + downButtonHeight) {
            buttonFill = buttonHoverColor;
        }
        fill(buttonFill);
        rect(downButtonX, downButtonY, downButtonWidth, downButtonHeight, 10);
        fill(#FFFFFF);
        text("⬇", downButtonX + downButtonWidth/2, downButtonY + downButtonHeight/2);
    }

    void mousePressed() {
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            menu.currentGame = 0; // Kembali ke menu utama
        } else if (mouseX >= upButtonX && mouseX <= upButtonX + upButtonWidth &&
                   mouseY >= upButtonY && mouseY <= upButtonY + upButtonHeight) {
            textY += textSpeed; // Menggerakkan teks ke bawah
        } else if (mouseX >= downButtonX && mouseX <= downButtonX + downButtonWidth &&
                   mouseY >= downButtonY && mouseY <= downButtonY + downButtonHeight) {
            textY -= textSpeed; // Menggerakkan teks ke atas
        }
    }
}
