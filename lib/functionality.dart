class Evaluate{
  Evaluate({this.operands, this.operators});
  List <double> operands = [];
  List <String> operators = [];
  List <int> index = [];
  double buff = 0;
  double res = 0;
  void calculate(){
    for(int i=0; i<operators.length; i++){

      if(operators[i]=='*'){
        operands[i+1] = operands[i]*operands[i+1];
        index.add(i);
      }
      else if(operators[i]=='/'){
        operands[i+1] = operands[i]/operands[i+1];
        index.add(i);
      }
    }
    for(int i=0; i<operands.length; i++)
    {
      res = res + operands[i];
    }
    for(int i =0 ; i<index.length; i++)
      buff = buff + operands[index[i]];
    res = res - buff;
  }
}
