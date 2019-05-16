Button[] numBtn = new Button[10];
Button[] optBtn = new Button[14];
String value, lVal, rVal;
char opVal;
float result;
Boolean firstNum, dec;
void setup() {
  size(500, 700);
  background(255);
  numBtn[0] = new Button(200, 580, 60, 40, "0", color(#F9F7ED), color(#D9D7CE), false).asNumber(0);
  numBtn[1] = new Button(100, 510, 60, 40, "1", color(#F9F7ED), color(#D9D7CE), false).asNumber(1);
  numBtn[2] = new Button(200, 510, 60, 40, "2", color(#F9F7ED), color(#D9D7CE), false).asNumber(2);
  numBtn[3] = new Button(300, 510, 60, 40, "3", color(#F9F7ED), color(#D9D7CE), false).asNumber(3);
  numBtn[4] = new Button(100, 440, 60, 40, "4", color(#F9F7ED), color(#D9D7CE), false).asNumber(4);
  numBtn[5] = new Button(200, 440, 60, 40, "5", color(#F9F7ED), color(#D9D7CE), false).asNumber(5);
  numBtn[6] = new Button(300, 440, 60, 40, "6", color(#F9F7ED), color(#D9D7CE), false).asNumber(6);
  numBtn[7] = new Button(100, 370, 60, 40, "7", color(#F9F7ED), color(#D9D7CE), false).asNumber(7);
  numBtn[8] = new Button(200, 370, 60, 40, "8", color(#F9F7ED), color(#D9D7CE), false).asNumber(8);
  numBtn[9] = new Button(300, 370, 60, 40, "9", color(#F9F7ED), color(#D9D7CE), false).asNumber(9);
  optBtn[0] = new Button(100, 300, 60, 40, ".", color(#F9F7ED), color(#D9D7CE), false).asOperator(".");
  optBtn[1] = new Button(200, 300, 60, 40, "+/-", color(#F9F7ED), color(#D9D7CE), false).asOperator("+/-");
  optBtn[2] = new Button(300, 300, 60, 40, "%", color(#F9F7ED), color(#D9D7CE), false).asOperator("%");
  optBtn[3] = new Button(75, 225, 50, 50, "C", color(#E3C800), color(#B8A200), true).asOperator("C");
  optBtn[4] = new Button(400, 510, 60, 40, "+", color(#E3C800), color(#B8A200), true).asOperator("+");
  optBtn[5] = new Button(400, 440, 60, 40, "-", color(#E3C800), color(#B8A200), true).asOperator("-");
  optBtn[6] = new Button(400, 370, 60, 40, "*", color(#E3C800), color(#B8A200), true).asOperator("*");
  optBtn[7] = new Button(400, 300, 60, 40, "/", color(#E3C800), color(#B8A200), true).asOperator("/");
  optBtn[8] = new Button(400, 580, 60, 60, "Enter", color(#E3C800), color(#B8A200), false).asOperator("Enter");
  optBtn[9] = new Button(145, 220, 50, 40, "?", color(#D9D7CE), color(#949494), false).asOperator("?");
  optBtn[10] = new Button(215, 220, 50, 40, "?", color(#D9D7CE), color(#949494), false).asOperator("?");
  optBtn[11] = new Button(285, 220, 50, 40, "?", color(#D9D7CE), color(#949494), false).asOperator("?");
  optBtn[12] = new Button(355, 220, 50, 40, "√", color(#D9D7CE), color(#949494), false).asOperator("?");
  optBtn[13] = new Button(425, 220, 50, 40, "^2", color(#D9D7CE), color(#949494), false).asOperator("^2");
  value = "";
  lVal = "";
  rVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
  dec = false;
}
void draw() {
  background(#AB260C);
  for (int i=0; i<numBtn.length; i++) {
    numBtn[i].hover();
    numBtn[i].display();
  }
  for (int i=0; i<optBtn.length; i++) {
    optBtn[i].hover();
    optBtn[i].display();
  }
  updateDisplay();
}
void updateDisplay() {
  fill(#D9D7CE);
  stroke(3);
  rect(250, 100, 400, 100);
  fill(0);
  textAlign(LEFT);
  text(value, 60, 70);
}
void mouseReleased() {
  for (int i=0; i<numBtn.length; i++) {
    if (numBtn[i].over) {
      if (firstNum) {
        lVal += numBtn[i].a;
        value = lVal;
      } else {
        rVal += numBtn[i].a;
        value = rVal;
      }
    }
  }
  for (int i=0; i<optBtn.length; i++) {
    if (optBtn[i].over) {
      if (optBtn[i].op == "+") {
        opVal = '+';
        firstNum= false;
        dec = false;
      } else if (optBtn[i].op == "-") {
        opVal = '-';
        firstNum= false;
        dec = false;
      } else if (optBtn[i].op == "*") {
        opVal = '*';
        firstNum= false;
        dec = false;
      } else if (optBtn[i].op == "^2") {
        opVal = '^';
        firstNum = false;
        dec = false;
      } else if (optBtn[i].op == "√") {
        opVal = '√';
        firstNum= false;
        dec = false;
      } else if (optBtn[i].op == "%") {
        if (firstNum) {
          lVal = str(float(lVal)/100);
          value = lVal;
          dec = false;
        } else {
          rVal = str(float(rVal)/100);
          value = rVal;
          dec = false;
        }
      } else if (optBtn[i].op == "/") {
        opVal = '/';
        firstNum= false;
        dec = false;
      } else if (optBtn[i].op == ".") {
        if (!dec) {
          if (firstNum) {
            lVal += optBtn[i].op;
            value = lVal;
            dec = true;
          } else {
            rVal += optBtn[i].op;
            value = rVal;
            dec = true;
          }
        }
      } else if (optBtn[i].op == "C") {
        value = "";
        lVal = "";
        rVal = "";
        opVal = ' ';
        result = 0.0;
        firstNum = true;
        dec = false;
      } else if (optBtn[i].op == "+/-") {
        if (firstNum) {
          lVal = str(float(lVal)*-1);
          value = lVal;
        } else {
          rVal = str(float(rVal)*-1);
          value = rVal;
        }
      } else {
        if (optBtn[i].op == "Enter") {
          performCalc();
        }
      }
    }
  }
}
void keyPressed() {
  if (firstNum) {
    if (key == '1') {
      handleKeyPress(true, "1");
    } else if (key == '2') {
      handleKeyPress(true, "2");
    } else if (key == '3') {
      handleKeyPress(true, "3");
    } else if (key == '4') {
      handleKeyPress(true, "4");
    } else if (key == '5') {
      handleKeyPress(true, "5");
    } else if (key == '6') {
      handleKeyPress(true, "6");
    } else if (key == '7') {
      handleKeyPress(true, "7");
    } else if (key == '8') {
      handleKeyPress(true, "8");
    } else if (key == '9') {
      handleKeyPress(true, "9");
    } else if (key == '0') {
      handleKeyPress(true, "0");
    }
  } else {
    if (key == '1') {
      handleKeyPress(false, "1");
    } else if (key == '2') {
      handleKeyPress(false, "2");
    } else if (key == '3') {
      handleKeyPress(false, "3");
    } else if (key == '4') {
      handleKeyPress(false, "4");
    } else if (key == '5') {
      handleKeyPress(false, "5");
    } else if (key == '6') {
      handleKeyPress(false, "6");
    } else if (key == '7') {
      handleKeyPress(false, "7");
    } else if (key == '8') {
      handleKeyPress(false, "8");
    } else if (key == '9') {
      handleKeyPress(false, "9");
    } else if (key == '0') {
      handleKeyPress(false, "0");
    }
  }
  if (key == '+') {
    opVal = '+';
    firstNum= false;
    dec = false;
  } else if (key == '-') {
    opVal = '-';
    firstNum= false;
    dec = false;
  } else if (key == '*') {
    opVal = '*';
    firstNum= false;
    dec = false;
  } else if (key == '/') {
    opVal = '/';
    firstNum= false;
    dec = false;
  } else if (keyCode == ENTER) {
    performCalc();
  } else if (keyCode == 'C') {
    value = "";
    lVal = "";
    rVal = "";
    opVal = ' ';
    result = 0.0;
    firstNum = true;
    dec = false;
  }
}
void handleKeyPress(boolean num, String val) {
  if (num) {
    lVal += val;
    value = lVal;
  } else {
    rVal += val;
    value = rVal;
  }
}
void performCalc() {
  if (opVal == '+') {
    result = float(lVal) + float(rVal);
    value = str(result);
  } else if (opVal == '-') {
    result = float(lVal) - float(rVal);
    value = str(result);
  } else if (opVal == '*') {
    result = float(lVal) * float(rVal);
    value = str(result);
  } else if (opVal == '/') {
    result = float(lVal) / float(rVal);
    value = str(result);
  } else if (opVal == '^') {
    result = float(lVal) * float(lVal);
    value = str(result);
  } else {
    result=float(rVal)*float(rVal);
    value = str(result);
  }  
  firstNum = true;
  rVal = "";
  lVal = str(result);
}
