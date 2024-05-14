class Petunjuk {
    int textAreaX, textAreaY, textAreaWidth, textAreaHeight;
    int scrollPosition = 0;
    

    void setup() {
        size(800, 600); // Set ukuran jendela
        textAreaX = 50;
        textAreaY = 50;
        textAreaWidth = width - 100;
        textAreaHeight = height - 100;
    }

    void draw() {
        background(0, 0, 255); // Latar belakang biru
        fill(255); // Warna teks putih
        textSize(18); // Ukuran teks 18
        textAlign(LEFT, TOP); // Teks rata kiri atas

        // Judul
        textSize(24);
        text("Petunjuk Permainan", textAreaX, textAreaY);
        textSize(18);

        // Deskripsi dan petunjuk
        String instructions = "Selamat datang di \"Game Ping Pong Sederhana\"!\n\nCara Bermain:\n\nKontrol Bet Kiri:\nGunakan tombol 'W' untuk menggerakkan bet kiri ke atas.\nGunakan tombol 'S' untuk menggerakkan bet kiri ke bawah.\n\nKontrol Bet Kanan:\nGunakan tombol panah 'atas' untuk menggerakkan bet kanan ke atas.\nGunakan tombol panah 'bawah' untuk menggerakkan bet kanan ke bawah.\n\nTujuan Permainan:\nTujuan utama permainan adalah memantulkan bola dengan bet Anda dan mencetak skor lebih tinggi dari lawan. Skor meningkat setiap kali bola melewati bet lawan dan mengenai sisi layar yang kosong. Permainan berakhir ketika salah satu pemain mencapai skor tertentu yang ditetapkan sebelumnya.\n\nAturan Permainan:\n- Jangan biarkan bola melewati bet Anda, atau lawan akan mencetak skor.\n- Hindari bola mengenai tepi layar atas atau bawah, atau lawan akan mencetak skor. \n\nMenangani Skor:\nSkor pemain ditampilkan di bagian atas atau bawah layar, tergantung pada desain permainan. Perhatikan skor Anda dan usahakan untuk mencetak skor lebih tinggi dari lawan.\n\nSekarang, Anda siap untuk memulai permainan!\nNikmati pengalaman bermain ping pong yang seru dan jadilah yang terbaik!";

        // Gambar text area
        rect(textAreaX, textAreaY, textAreaWidth, textAreaHeight);

        // Gambar teks dengan scroll
        textArea(instructions, textAreaX + 10, textAreaY + 10, textAreaWidth - 20, textAreaHeight - 20, scrollPosition);
    }

    void textArea(String text, int x, int y, int w, int h, int scroll) {
        rectMode(CORNER);
        noStroke();
        fill(0, 0, 255);
        rect(x, y, w, h);
        fill(255);
        textAlign(LEFT, TOP);
        textSize(18);
        text(text, x, y - scroll, w, h);
    }

    void mouseWheel(MouseEvent event) {
        scrollPosition += event.getCount() * 20;
        scrollPosition = constrain(scrollPosition, 0, textAreaHeight);
    }
}
