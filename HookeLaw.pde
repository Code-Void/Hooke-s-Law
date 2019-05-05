ArrayList<Point> points = new ArrayList<Point>();
ArrayList<Hook> hooks = new ArrayList<Hook>();


void setup() {
  fullScreen();

  points.add(new Point(width/3, height/3, 50));
  points.add(new Point(width - width/3, height/2, 50));

  hooks.add(new Hook(points.get(0), points.get(1), PVector.dist(points.get(0).position, points.get(1).position)));
}

void draw() {
  background(0);

  for (Point p : points) p.odin();
  for (Hook h : hooks) h.update();
}

void mousePressed() {
  points.get(0).position.x = mouseX;
  points.get(0).position.y = mouseY;
}
