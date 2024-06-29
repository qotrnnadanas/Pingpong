class Setting {
  boolean isMuted = false; // Variabel untuk menyimpan status suara (bunyi atau tidak)
  int buttonX, buttonY, buttonWidth, buttonHeight;
  color buttonColor = color(#76CDFA); // Deklarasi variabel buttonColor
  color buttonHoverColor = color(#709BF7); // Deklarasi variabel buttonHoverColor

  Setting() {
    // Konstruktor
    buttonX = width/2 - 100;
    buttonY = height - 100;
    buttonWidth = 200;
    buttonHeight = 40;
  }

  void display() {
    background(#1A5CA8); // Latar belakang biru
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

    // Tombol "Kembali"
    color buttonFill = buttonColor;
    if (mouseX >= this.buttonX && mouseX <= this.buttonX + buttonWidth &&
        mouseY >= this.buttonY && mouseY <= this.buttonY + buttonHeight) {
      buttonFill = buttonHoverColor;
    }
    fill(buttonFill);
    rect(this.buttonX, this.buttonY, buttonWidth, buttonHeight, 10);
    fill(#FFFFFF);
    text("Kembali", this.buttonX + buttonWidth/2, this.buttonY + buttonHeight/2);
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

  void mousePressed() {
    if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
        mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
      menu.currentGame = 0; // Kembali ke menu utama
    }
  }
}
