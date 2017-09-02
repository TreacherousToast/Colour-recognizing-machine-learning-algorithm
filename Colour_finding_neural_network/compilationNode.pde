class compilationNode
{ 
  boolean[] redCombination = {false,false,false}; 
  boolean[] greenCombination = {false,false,false};
  boolean[] blueCombination = {false,false,false};
  boolean[] yellowCombination = {false,false,false};
  boolean[] purpleCombination = {false,false,false};
  boolean[] whiteCombination = {false,false,false};
  boolean[] cyanCombination = {false,false,false};
  boolean[] blackCombination = {false,false,false};
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
    else if (colour == 7)
    {
      blackCombination[0] = currCombination[0];
      blackCombination[1] = currCombination[1];
      blackCombination[2] = currCombination[2];
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
    
    if(combination[0] == redCombination[0] && combination[1]== redCombination[1] && combination[2] == redCombination[2])
    {
      colour = "Red";
    }
    else if(combination[0] == greenCombination[0] && combination[1] == greenCombination[1] && combination[2] == greenCombination[2])
    {
      colour = "Green";
    }
    else if(combination[0]== blueCombination[0] && combination[1] == blueCombination[1] && combination[2] == blueCombination[2])
    {
      colour = "Blue";
    }
    else if(combination[0] == yellowCombination[0] && combination[1] == yellowCombination[1] && combination[2] == yellowCombination[2])
    {
      colour = "Yellow";
    }
    else if(combination[0] == purpleCombination[0] && combination[1] == purpleCombination[1] && combination[2] == purpleCombination[2])
    {
      colour = "Purple";
    }
    else if(combination[0] == whiteCombination[0] && combination[1] == whiteCombination[1] && combination[2] == whiteCombination[2])
    {
      colour = "White";
    }
    else if(combination[0] == cyanCombination[0] && combination[1] == cyanCombination[1] && combination[2] == cyanCombination[2])
    {
      colour = "Cyan";
    }
    else if (combination[0] == blackCombination[0]&&combination[1] == blackCombination[1]&&combination[2] == blackCombination[2])
    {
      colour = "Black";
    }
    return colour;
  }
}
