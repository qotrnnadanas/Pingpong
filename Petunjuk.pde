class Petunjuk {
    float opacity = 0; // Variabel untuk mengontrol opasitas teks
    boolean showBackButton = false; // Variabel untuk mengontrol tampilan tombol kembali

    void setup() {
        size(800, 600); // Set ukuran jendela
    }

    void draw() {
        background(51, 51, 51); // Latar belakang abu-abu gelap
        fill(255, opacity); // Warna teks putih dengan opasitas yang berubah
        textSize(24); // Ukuran teks 24
        textAlign(CENTER); // Teks rata tengah

        // Judul
        textSize(24);
        textFont(font);
        text("Petunjuk Permainan", width/2, 80);
        textFont(font);
        textSize(12);

        // Deskripsi dan petunjuk
        String petunjuk = "Selamat datang di \"Game Ping Pong Sederhana\"!\n\nCara Bermain:\n\nKontrol Bet Kiri:\nGunakan tombol 'W' untuk menggerakkan bet kiri ke atas.\nGunakan tombol 'S' untuk menggerakkan bet kiri ke bawah.\n\nKontrol Bet Kanan:\nGunakan tombol panah 'atas' untuk menggerakkan bet kanan ke atas.\nGunakan tombol panah 'bawah' untuk menggerakkan bet kanan ke bawah.\n\nTujuan Permainan:\nTujuan utama permainan adalah memantulkan bola dengan bet Anda dan mencetak skor 20 untuk memenangkan pertandingan. \nSkor meningkat setiap kali bola melewati bet lawan dan mengenai sisi layar yang kosong. Permainan berakhir ketika salah satu pemain mencapai skor 20.\n\nAturan Permainan:\n- Jangan biarkan bola melewati bet Anda, atau lawan akan mencetak skor.\n\nMenangani Skor:\nSkor pemain ditampilkan di bagian atas layar. Perhatikan skor Anda dan usahakan untuk mencetak skor lebih tinggi dari lawan.\n\nSekarang, Anda siap untuk memulai permainan!\nNikmati pengalaman bermain ping pong yang seru dan jadilah yang terbaik!";

        // Menampilkan deskripsi
        textAlign(CENTER, CENTER);
        text(petunjuk, width/2, height/2);

        // Animasi teks deskripsi
        if (opacity < 255) {
            opacity += 2; // Menambah opasitas teks secara bertahap
        } else {
            showBackButton = true; // Menampilkan tombol kembali setelah teks selesai muncul
        }

        // Tombol kembali
        if (showBackButton) {
            fill(255);
            rect(width/2 - 100, height - 100, 200, 50, 10); // Kotak tombol
            fill(0);
            text("Kembali ke Menu", width/2, height - 75); // Teks tombol
        }
    }

    void mousePressed() {
        // Cek jika tombol kembali diklik
        if (showBackButton && mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height - 100 && mouseY <= height - 50) {
            menu.currentGame = 0; // Kembali ke menu utama
        }
    }
}
