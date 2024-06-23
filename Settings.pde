class Setting {
  boolean isMuted = false; // Variabel untuk menyimpan status suara (bunyi atau tidak)

  Setting() {
    // Konstruktor
  }

  void display() {
    background(50); // Latar belakang abu-abu gelap
    fill(255);
    textSize(32);
    textFont(font);
    text("Pengaturan Suara", width/2, 50);

    // Tombol untuk mengatur suara
    int buttonX = width/2 - 100;
    int buttonY = height/2 - 25;
    int buttonWidth = 200;
    int buttonHeight = 50;

    fill(isMuted ? color(255, 0, 0) : color(0, 255, 0)); // Warna tombol berdasarkan status suara
    rect(buttonX, buttonY, buttonWidth, buttonHeight, 10); // Tombol dengan sudut lengkung

    fill(255);
    textSize(24);
    textAlign(CENTER, CENTER);
    text(isMuted ? "Hidupkan Suara" : "Matikan Suara", buttonX + buttonWidth/2, buttonY + buttonHeight/2);
  }

  void updateVolume() {
    int buttonX = width/2 - 100;
    int buttonY = height/2 - 25;
    int buttonWidth = 200;
    int buttonHeight = 50;

    if (mousePressed && mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
        mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
      isMuted = !isMuted; // Mengubah status suara
      backgroundSound.amp(isMuted ? 0 : 1); // Mengatur amplitudo suara latar belakang
    }
  }
}
