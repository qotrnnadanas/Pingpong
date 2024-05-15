class Tentang {
    float opacity = 0; // Variabel untuk mengontrol opasitas teks
    boolean showBackButton = false; // Variabel untuk mengontrol tampilan tombol kembali

    void setup() {
        // Tidak ada setup khusus yang diperlukan
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
