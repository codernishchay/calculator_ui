import 'package:calculator_ui/functionality.dart';

double buff = 0;

var values = Evaluate();

void onclick(input){
  buff = buff*10 + input;
}

void onOperatorClick(input){
//  values.calculate();
  values.operands.add(buff);
  values.operators.add(input);
  buff = 0;
}

void finalClick(){
  values.operands.add(buff);
  values.calculate();
  buff = 0;
}
