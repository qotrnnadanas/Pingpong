class Pingpong {
    // Import Processing Sound library
  
    void setup() {
      // seting ukuran lapangan
      size(1000, 600);
      // Initialize objects
      ball = new Ball();
      score = new Score();
      net = new Net();
      betR = new betkanan();
      betL = new betkiri();
    }

    void draw() {
      background(0, 150, 0);
      score.display();
      net.display();
      ball.display();
      ball.move(betR, betL);
      betL.display();
      betL.move();
      betR.move();
      betR.display(); 
  }
}
