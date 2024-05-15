class Tentang {
    void setup() {
        // Tidak ada setup khusus yang diperlukan
    }

    void draw() {
        background(51, 51, 51); // Latar belakang abu-abu gelap
        fill(255); // Warna teks putih
        textSize(24); // Ukuran teks 24
        textAlign(CENTER); // Teks rata tengah

        // Judul
        textSize(48);
        textFont(font); // Font modern
        text("Permainan Ping Pong", width/2, 80);
        textFont(font); // Font modern
        textSize(24);

        // Deskripsi
        String deskripsi = "Permainan Ping Pong Sederhana ini dibuat sebagai proyek Tugas Media Intraktif.\n\n"
                         + "Dibuat oleh:\n"
                         + "Taufiq Dwi Aziz 21.11.4342\nQotrun Nada Narulloh 21.11.4354\nZulaicho Oktafreza Wardana 21.11.4360\nFajar Kurniawan 21.11.4383\nFauzi Ilham Darmawan 21.11.4394\n"
                         + "Teknologi yang digunakan:\n"
                         + "- Processing\n\n"
                         + "Versi: 1.0\n"
                         + "Tanggal Rilis: " + day() + "/" + month() + "/" + year();

        // Menampilkan deskripsi
        textAlign(CENTER, CENTER);
        text(deskripsi, width/2, height/2);
    }
}