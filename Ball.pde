class Ball {
    float x;
    float y;
    float w;
    float h;
    float speedX;
    float speedY;
    boolean gameOver = false;
    boolean kembali = false;
    Menu menu;

    Ball(Menu menu) {
        this.menu = menu;
        // Inisialisasi variabel lainnya
        x = width / 2;
        y = height / 2;
        w = 20;
        h = 20;
        speedX = 2 * level;
        speedY = level;
    }

    void display() {
        ellipseMode(CENTER);
        noStroke();
        fill(#FC7F00);
        ellipse(x, y, w, h);
    }

    void move(betkanan betR, betkiri betL) {
        x += speedX;
        y += speedY;

        if (x + w >= betR.x && x <= betR.x + betR.w && y + w >= betR.y && y <= betR.y + betR.h) {
            bet.play();
            speedX *= -1;
        }

        if (x >= betL.x && x < betL.x + betL.w && y + h >= betL.y && y <= betL.y + betL.h) {
            bet.play();
            speedX *= -1;
        }

        if (y <= 0 || y + h >= height) {
            sides.play();
            speedY *= -1;
        }

        if (x > width) {
            point.play();
            x = width / 2;
            score.scoreL++;
        }

        if (x < 0) {
            point.play();
            x = width / 2;
            score.scoreR++;
        }

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
            gameOver = true;
            textAlign(CENTER, CENTER);
            textFont(font, 24);
            fill(255);
            text("Game Over \nPemain Kanan Menang!", width / 2, height / 2 - 50);
            drawButtons();
            noLoop(); // Menghentikan loop draw()
        }
        if (score.scoreL >= 21) {
            speedX = 0;
            speedY = 0;
            gameOver = true;
            textFont(font, 24);
            textAlign(CENTER, CENTER);
            fill(255);
            text("Game Over \nPemain Kiri Menang!", width / 2, height / 2 - 50);
            drawButtons();
            noLoop(); // Menghentikan loop draw()
        }
    }

    void drawButtons() {
        int buttonWidth = 200;
        int buttonHeight = 50;
        int buttonX = width / 2 - buttonWidth / 2;
        int buttonY = height / 2 + 100;

        // Tombol "Mulai Ulang"
        fill(#3DC2EC); // Warna biru
        rect(buttonX, buttonY, buttonWidth, buttonHeight, 10);
        fill(255);
        textAlign(CENTER, CENTER);
        text("Mulai Ulang", buttonX + buttonWidth / 2, buttonY + buttonHeight / 2);

        // Tombol "Kembali ke Menu"
        buttonY += buttonHeight + 20;
        fill(#F44336); // Warna merah
        rect(buttonX, buttonY, buttonWidth, buttonHeight, 10);
        fill(255);
        textAlign(CENTER, CENTER);
        text("Kembali ke Menu", buttonX + buttonWidth / 2, buttonY + buttonHeight / 2);
    }

    void mousePressed() {
        int buttonWidth = 200;
        int buttonHeight = 50;
        int buttonX = width / 2 - buttonWidth / 2;
        int buttonY = height / 2 + 100;

        // Cek jika tombol "Mulai Ulang" ditekan
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            resetGame();
        }

        // Cek jika tombol "Kembali ke Menu" ditekan
        buttonY += buttonHeight + 20;
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            kembali = true;
        }

        if (kembali) {
            menu.currentGame = 0; // Kembali ke menu utama
            kembali = false;
            resetGame(); // Reset game
        }
    }

    void resetGame() {
        x = width / 2;
        y = height / 2;
        speedX = 2 * level;
        speedY = level;
        score.scoreR = 0;
        score.scoreL = 0;
        gameOver = false;
        loop(); // Memulai kembali loop draw()
    }
}
