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
String currColourStr = "";
String[] colours = {"Red","Green","Blue","Yellow","Purple","White","Cyan"};
int colourTrainingNum = 0; // 0 for red, 1 for green, 2 for blue
int entryTimes = 0;
int currColour = 0;

void setup()
{
  size(640,360);
}
void draw()
{
  background(255);
  fill(0);
  textSize(12);
  text(inputStr,1,13);
  if(trainingRound1 == true)
  {
    text(colours[colourTrainingNum],1,26);
    text(entryTimes,1,39);
    text("Please put an acceptable, one-number value for the colour indicated in the text box above.",1,51);
  }
  else if (trainingRound2 == true)
  {
    text(colours[currColour],1,26);
    text("Please enter an RGB value for the colour indicated in the text box above. Please use the format RRR, GGG, BBB. (Ignore the period)",1,38);
  }
  else if (running == true)
  {
    text(finalColour,1,39);
    if (finalColour == "")
    {
      text("Please enter a colour value you want the network to recognize.",1,39);
    }
  }
}
void keyPressed()
{
  if (key != ENTER && key != RETURN)
  {
    inputStr += key;
  }
  else
  {
    if (trainingRound1 == true) // --------------TRAINING ROUND 1------------------------
    {
      if (entryTimes < 11)
      {
      if (colourTrainingNum == 0)
      {
        r.trainMinMax(int(inputStr));
        inputStr = "";
        colourTrainingNum = 1;
      }
      else if (colourTrainingNum == 1)
      {
        g.trainMinMax(int(inputStr));
        inputStr = "";
        colourTrainingNum = 2;
      }
      else if (colourTrainingNum == 2)
      {
        b.trainMinMax(int(inputStr));
        inputStr = "";
        colourTrainingNum = 0;
      }
    }
    else
    {
      trainingRound1 = false;
      trainingRound2 = true;
      entryTimes = 0;
      inputStr = "";
    }
    entryTimes++;
    }
    else if (trainingRound2 == true) // ---------------------TRAINING ROUND 2-------------------
    {
        int[] nums = int(split(inputStr, ", "));
        rInRange = r.checkIfIsInRange(nums[0]);
        gInRange = g.checkIfIsInRange(nums[1]);
        bInRange = b.checkIfIsInRange(nums[2]);
        c.trainColourCombinations(rInRange,gInRange,bInRange,currColour);
        if (currColour == 0)
        {
          currColourStr = "Red";
        }
        else if (currColour == 1)
        {
          currColourStr = "Green";
        }
        else if (currColour == 2)
        {
          currColourStr = "Blue";
        }
        else if (currColour == 3)
        {
          currColourStr = "Yellow";
        }
        else if (currColour == 4)
        {
          currColourStr = "Purple";
        }
        else if (currColour == 5)
        {
          currColourStr = "White";
        }
        else if (currColour == 6)
        {
          currColourStr = "Cyan";
        }
        currColour++;
        inputStr = "";
    
      if(currColour == 7)
      {
        trainingRound2 = false;
        running = true;
        inputStr = "";
      }
    }
    else if (running == true) // ---------------------------RUNNING--------------------------------- //<>// //<>//
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
}