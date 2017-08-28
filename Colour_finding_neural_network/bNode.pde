class bNode
{
  int blueMin = 127;
  int blueMax = 127;
  boolean isInRange = false;
  
  void trainMinMax(int val)
  {
    if (val > blueMax && val > blueMin)
    {
      blueMax = val;
    }
    else if (val < blueMax && val < blueMin)
    {
      blueMin = val;
    }
  }
  public boolean checkIfIsInRange (int val)
  {
    if (val >= blueMin && val <= blueMax)
    {
      isInRange = true;
    }
    else
    {
      isInRange = false;
    }
    return isInRange;
  }
}