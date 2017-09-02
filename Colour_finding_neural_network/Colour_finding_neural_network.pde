rNode r = new rNode();
gNode g = new gNode();
bNode b = new bNode();
compilationNode c = new compilationNode();
boolean trainingRound1 = true;
boolean trainingRound2 = false;
boolean running = false;
boolean rInRange = false;
boolean gInRange = false;
boolean bInRange = false;
String inputStr = "";
String finalColour = "";
String[] colours = {"Red","Green","Blue","Yellow","Purple","White","Cyan","Black"};
int colourTrainingNum = 0; // 0 for red, 1 for green, 2 for blue

void setup()
{
  size(640,360);
    String[] lines = loadStrings("training.txt");
    for (int i = 0; i < 12; i++)
      {
        if (colourTrainingNum == 0)
        {
          r.trainMinMax(int(lines[i]));
          colourTrainingNum = 1;
        }
        else if (colourTrainingNum == 1)
        {
          g.trainMinMax(int(lines[i]));
          colourTrainingNum = 2;
        }
        else if (colourTrainingNum == 2)
        {
          b.trainMinMax(int(lines[i]));
          colourTrainingNum = 0;
        }
      }
      for (int i = 0; i < 8; i++)
      {
        int[] nums = int(split(lines[i+12], ", "));
        rInRange = r.checkIfIsInRange(nums[0]);
        gInRange = g.checkIfIsInRange(nums[1]);
        bInRange = b.checkIfIsInRange(nums[2]);
        c.trainColourCombinations(rInRange,gInRange,bInRange,i);
      }
      trainingRound1 = false;
      trainingRound2 = false;
      running = true;
}
void draw()
{
  background(255);
  fill(0);
  textSize(12);
  text(inputStr,1,13);
  text(finalColour,1,39);
  if (finalColour == "")
  {
    text("Please enter a colour value you want the network to recognize.",1,39);
  }
}
void keyPressed()
{
  if (key != ENTER && key != RETURN&&key != BACKSPACE)
  {
    inputStr += key;
  }
  else if (key == BACKSPACE)
  {
    inputStr = "";
  }
  else
  {
      rInRange = false;
      gInRange = false;
      bInRange = false;
      int[] nums = int(split(inputStr, ", "));
      rInRange = r.checkIfIsInRange(nums[0]);
      gInRange = g.checkIfIsInRange(nums[1]);
      bInRange = b.checkIfIsInRange(nums[2]);
      finalColour = c.compileAndCheckColour(rInRange, gInRange, bInRange);
      inputStr = "";
  }
}
