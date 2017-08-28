class compilationNode
{ 
  boolean[] redCombination = {false,false,false}; 
  boolean[] greenCombination = {false,false,false};
  boolean[] blueCombination = {false,false,false};
  boolean[] yellowCombination = {false,false,false};
  boolean[] purpleCombination = {false,false,false};
  boolean[] whiteCombination = {false,false,false};
  boolean[] cyanCombination = {false,false,false};
  boolean[] currCombination = {false,false,false};
  
  void trainColourCombinations(boolean rInRange, boolean gInRange, boolean bInRange, int colour) // NOT WORKING
  {
    currCombination[0] = rInRange;
    currCombination[1] = gInRange;
    currCombination[2] = bInRange;
    
    if (colour == 0)
    {
      redCombination[0] = currCombination[0];
      redCombination[1] = currCombination[1];
      redCombination[2] = currCombination[2];
    }
    else if (colour == 1)
    {
      greenCombination[0] = currCombination[0];
      greenCombination[1] = currCombination[1];
      greenCombination[2] = currCombination[2];
    }
    else if (colour == 2)
    {
      blueCombination[0] = currCombination[0];
      blueCombination[1] = currCombination[1];
      blueCombination[2] = currCombination[2];
    }
    else if (colour == 3)
    {
      yellowCombination[0] = currCombination[0];
      yellowCombination[1] = currCombination[1];
      yellowCombination[2] = currCombination[2];
    }
    else if (colour == 4)
    {
      purpleCombination[0] = currCombination[0];
      purpleCombination[1] = currCombination[1];
      purpleCombination[2] = currCombination[2];
    }
    else if (colour == 5)
    {
      whiteCombination[0] = currCombination[0];
      whiteCombination[1] = currCombination[1];
      whiteCombination[2] = currCombination[2];
    }
    else if (colour == 6)
    {
      cyanCombination[0] = currCombination[0];
      cyanCombination[1] = currCombination[1];
      cyanCombination[2] = currCombination[2];
    }
    currCombination[0] = false;
    currCombination[1] = false;
    currCombination[2] = false;
  }
  public String compileAndCheckColour(boolean inRangeR, boolean inRangeG, boolean inRangeB)
  {
    String colour = "";
    boolean[] combination = {false,false,false};
    combination[0] = inRangeR;
    combination[1] = inRangeG;
    combination[2] = inRangeB;
    
    if(combination[0] == true && combination[1]== false && combination[2] == false)
    {
      colour = "Red";
    }
    else if(combination[0] == false && combination[1] == true && combination[2] == false) // MESSED UP WITH YELLOW
    {
      colour = "Green";
    }
    else if(combination[0]== false && combination[1] == false && combination[2] == true)
    {
      colour = "Blue";
    }
    else if(combination[0] == true && combination[1] == true && combination[2] == false) // NOT WORKING
    {
      colour = "Yellow";
    }
    else if(combination[0] == true && combination[1] == false && combination[2] == true)
    {
      colour = "Purple";
    }
    else if(combination[0] == true && combination[1] == true && combination[2] == true)
    {
      colour = "White";
    }
    else if(combination[0] == false && combination[1] == true && combination[2] == true)
    {
      colour = "Cyan";
    }
    return colour;
  }
}
