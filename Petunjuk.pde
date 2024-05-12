class Petunjuk {
    void setup() {
        size(800, 600); // Set ukuran jendela
    }

    void draw() {
        background(0, 0, 255); // Latar belakang biru
        fill(255); // Warna teks putih
        textSize(12); // Ukuran teks 16
        textAlign(CENTER, CENTER); // Teks rata tengah

        // Judul
        text("Petunjuk Permainan", width/2, height/4);

        // Deskripsi
        text("Selamat datang di \"Game Ping Pong Sederhana\"!", width/2, height/4 + 50);
        text("Cara Bermain:", width/2, height/4 + 100);

        // Kontrol Bet Kiri
        text("Kontrol Bet Kiri:", width/2, height/4 + 150);
        text("Gunakan tombol 'W' untuk menggerakkan bet kiri ke atas.", width/2, height/4 + 180);
        text("Gunakan tombol 'S' untuk menggerakkan bet kiri ke bawah.", width/2, height/4 + 210);

        // Kontrol Bet Kanan
        text("Kontrol Bet Kanan:", width/2, height/4 + 260);
        text("Gunakan tombol panah 'atas' untuk menggerakkan bet kanan ke atas.", width/2, height/4 + 290);
        text("Gunakan tombol panah 'bawah' untuk menggerakkan bet kanan ke bawah.", width/2, height/4 + 320);

        // Tujuan Permainan
        text("Tujuan Permainan:", width/2, height/4 + 370);
        text("Tujuan utama permainan adalah memantulkan bola dengan bet Anda", width/2, height/4 + 400);
        text("dan mencetak skor lebih tinggi dari lawan. Skor meningkat setiap kali bola", width/2, height/4 + 430);
        text("melewati bet lawan dan mengenai sisi layar yang kosong. Permainan berakhir", width/2, height/4 + 460);
        text("ketika salah satu pemain mencapai skor tertentu yang ditetapkan sebelumnya.", width/2, height/4 + 490);

        // Aturan Permainan
        text("Aturan Permainan:", width/2, height/4 + 540);
        text("Bola hanya boleh dipantulkan dengan bet, tidak boleh menggunakan tangan atau benda lain.", width/2, height/4 + 570);
        text("Jangan biarkan bola melewati bet Anda, atau lawan akan mencetak skor.", width/2, height*3/4 - 60);
        text("Hindari bola mengenai tepi layar atas atau bawah, atau lawan akan mencetak skor.", width/2, height*3/4 - 30);
        text("Jika bola menyentuh net, permainan akan diulang.", width/2, height*3/4);

        // Menangani Skor
        text("Menangani Skor:", width/2, height*3/4 + 50);
        text("Skor pemain ditampilkan di bagian atas atau bawah layar, tergantung pada desain permainan.", width/2, height*3/4 + 80);
        text("Perhatikan skor Anda dan usahakan untuk mencetak skor lebih tinggi dari lawan.", width/2, height*3/4 + 110);

        // Penutup
        text("Sekarang, Anda siap untuk memulai permainan!", width/2, height*3/4 + 160);
        text("Nikmati pengalaman bermain ping pong yang seru dan jadilah yang terbaik!", width/2, height*3/4 + 190);
    }
}
