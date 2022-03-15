/*ボタンの当たり判定を作成するクラス*/

class Botton {
  private int bottonMode;
  private float left_x,  left_y;
  private float right_x, right_y;

  private boolean lastClick;

  void setPoint(float x, float y, float _x, float _y) {
    switch(bottonMode) {
    case CORNER:
      left_x = x;
      left_y = y;
      right_x = x + _x;
      right_y = y + _y;
      break;
    case CORNERS:
      left_x = x;
      left_y = y;
      right_x = _x;
      right_y = _y;
      break;
    case CENTER:
      left_x = x - _x/2;
      left_y = y - _y/2;
      right_x = x + _x/2;
      right_y = y + _y/2;
      break;
    case RADIUS:
      left_x = x - _x;
      left_y = y - _y;
      right_x = left_x + _x*2;
      right_y = left_y + _y*2;
      break;
    }
  }

  void bottonMode(int mode) {
    bottonMode = mode;
  }

  boolean hover() {
    if (left_x <= mouseX && mouseX <=right_x && left_y <= mouseY && mouseY <=right_y)
      return true;
    return false;
  }

  boolean click() {
    if (left_x <= mouseX && mouseX <=right_x && left_y <= mouseY && mouseY <=right_y
      && mousePressed && lastClick==false) {
      lastClick = true;
      return true;
    }
    lastClick = mousePressed;
    return false;
  }

  boolean press() {
    if (left_x <= mouseX && mouseX <=right_x && left_y <= mouseY && mouseY <=right_y
      && mousePressed)
      return true;
    return false;
  }

  void drawBotton() {
    if (hover())
      fill(150);
    else
      noFill();
    rectMode(CORNERS);
    stroke(0);
    rect(left_x, left_y, right_x, right_y);
    rectMode(CORNER);

    fill(0);
    textSize(10);
    textAlign(LEFT, TOP);
    text("botton", left_x, left_y);
  }
};