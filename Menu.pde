class Menu {
    Game1 game1;
    Game2 game2;
    int currentGame = 0; 

    Menu(Game1 game1, Game2 game2) {
        this.game1 = game1;
        this.game2 = game2;
    }

    void setup() {
        
    }

    void draw() {
        background(255); 
       
        fill(0);
        textSize(24);
        text("Main Menu", width/2 - 70, height/2 - 50);
        textSize(16);
        text("1. Mulai ", width/2 - 50, height/2);
        text("2. Exit", width/2 - 50, height/2 + 30);
    }

    void keyPressed() {
        if (currentGame == 0) {
            if (keyCode == '1') {
                currentGame = 1;
                game1.setup();
            } else if (keyCode == '2') {
                currentGame = 2;
                game2.setup();
            }
        }
    }
}
