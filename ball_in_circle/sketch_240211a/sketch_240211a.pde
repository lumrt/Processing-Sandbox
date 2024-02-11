float circleX, circleY;
float circleRadius = 150;
float ballX, ballY;
float ballRadius = 20;
float gravity = 5; // Valeur de la gravité

void setup() {
  size(400, 400);
  // Initialiser les coordonnées du cercle et de la balle au centre de la fenêtre
  circleX = width / 2;
  circleY = height / 2;
  ballX = circleX;
  ballY = circleY - circleRadius + ballRadius; // Positionner la balle au sommet du cercle
  // Définir le mode de dessin des ellipses sur RADIUS
  ellipseMode(RADIUS);
}

void draw() {
  background(220);
  
  // Dessiner le cercle extérieur
  ellipse(circleX, circleY, circleRadius, circleRadius);
  
  // Appliquer la gravité à la balle
  ballY += gravity;
  
  // Dessiner la balle à l'intérieur du cercle
  ellipse(ballX, ballY, ballRadius, ballRadius);
  
  // Vérifier si la balle atteint le bas du cercle
  if (ballY + ballRadius >= circleY + circleRadius) {
    // Si la balle atteint le bas du cercle, réinitialiser sa position au sommet du cercle
    ballY = circleY - circleRadius + ballRadius;
  }
}
