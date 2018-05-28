class rNode
{
  int redMin = 127;
  int redMax = 127;
  boolean isInRange = false;
  
  void trainMinMax(int val)
  {
    if (val > redMax && val > redMin)
    {
      redMax = val;
    }
    else if (val < redMax && val < redMin)
    {
      redMin = val;
    }
  }
  public boolean checkIfIsInRange (int val)
  {
    if (val >= redMin && val <= redMax)
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
