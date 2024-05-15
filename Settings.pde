class Setting {
  float volume = 1.0; // Volume awal diatur ke 1.0 (maksimum)

  Setting() {
    // Konstruktor
  }

  void display() {
    background(50); // Latar belakang abu-abu gelap
    fill(255);
    textSize(32);
    textFont(font); 
    text("Pengaturan Volume", width/2, 50);

    // Slider untuk mengatur volume
    stroke(255);
    strokeWeight(4); // Garis slider lebih tebal
    line(width/4, height/2, 3*width/4, height/2);
    noStroke();
    fill(255, 165, 0); // Warna jingga untuk penunjuk slider
    rect(width/4 + (3*width/8)*volume - 15, height/2 - 15, 30, 30, 5); // Penunjuk slider berbentuk persegi dengan sudut lengkung

    // Teks untuk menampilkan nilai volume
    fill(255);  
    textSize(24);
    textFont(createFont("Arial", 24, true)); // Font modern
    text("Volume: " + nf(volume, 0, 2), width/2, height/2 + 80);
  }

  void updateVolume() {
    if (mousePressed && mouseX >= width/4 && mouseX <= 3*width/4 && mouseY >= height/2 - 30 && mouseY <= height/2 + 30) {
      volume = map(mouseX, width/4, 3*width/4, 0, 1);
      volume = constrain(volume, 0, 1); // Membatasi volume antara 0 dan 1
      backgroundSound.amp(volume); // Mengatur amplitudo (volume) suara latar belakang
    }
  }
}
