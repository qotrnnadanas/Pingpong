class Ball {
  float x;
  float y;
  float w;
  float h;
  float speedX;
  float speedY;

  Ball () {
    x = width/2;
    y = height/2;
    w = 20;
    h = 20;
    speedX = 2*level;
    speedY = level;
  }

  void display() {
    ellipseMode(CENTER);
    noStroke();
    fill(#FC7F00);
    ellipse(x, y, w, h);  // Menggunakan ellipse() untuk menggambar bola
  }

  void move(betkanan betR, betkiri betL) {
    x += speedX;
    y += speedY;

    if (x+w >= betR.x && x <= betR.x + betR.w && y+w >= betR.y && y <= betR.y + betR.h) {  
      bet.play();
      speedX *= -1;
    }

    if (x >= betL.x && x < betL.x+betL.w && y+h >= betL.y && y <= betL.y + betL.h) {   
      bet.play();
      speedX *= -1;
    }

    if (y <= 0 || y+h >= height) {    // Bola mengenai bagian atas atau bawah layar
      sides.play();
      speedY *= -1;
    }

    if (x > width) {     // Jika bola meninggalkan layar dari sisi kanan
      point.play();
      x = width/2;           // Bola dikembalikan ke tengah lebar layar
      score.scoreL ++;       // Skor kiri bertambah satu
    }

    if (x < 0) {             // Jika bola meninggalkan layar dari sisi kiri
      point.play();
      x = width/2;           // Bola dikembalikan ke tengah lebar layar
      score.scoreR ++;       // skor kanan bertambah satu
    }

   //kecepatan bola jika skor mencapai batas tertentu
    if (score.scoreR % 5 == 0 && score.scoreR > 0) {
      speedX *= 1.005;
      speedY *= 1.005;
    }
    if (score.scoreL % 5 == 0 && score.scoreL > 0) {
      speedX *= 1.005;
      speedY *= 1.005;
    }

    if (score.scoreR >= 21) {
        speedX = 0;
        speedY = 0;
        textSize(48);
        textAlign(CENTER, CENTER);
        textFont(font);
        fill(255);
        text("Game Over \nPemain Kanan Menang!", width/2, height/2);
        noLoop(); // Menghentikan loop draw()
    }
    if (score.scoreL >= 21) {
        speedX = 0;
        speedY = 0;
        textSize(48);
        textFont(font);
        textAlign(CENTER, CENTER);
        fill(255);
        text("Game Over \nPemain Kiri Menang!", width/2, height/2);
        noLoop(); // Menghentikan loop draw()
    }
  }
}
