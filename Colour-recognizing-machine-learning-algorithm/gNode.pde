class gNode
{
  int greenMin = 127;
  int greenMax = 127;
  boolean isInRange = false;
  
  void trainMinMax(int val)
  {
    if (val > greenMax && val > greenMin)
    {
      greenMax = val;
    }
    else if (val < greenMax && val < greenMin)
    {
      greenMin = val;
    }
  }
  public boolean checkIfIsInRange (int val)
  {
    if (val >= greenMin && val <= greenMax)
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
