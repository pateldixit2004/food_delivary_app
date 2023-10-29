import 'package:flutter/cupertino.dart';

double h=0,w=0;
dynamic w1=0;
class AppSize
{
  static final appSize=AppSize._();
  AppSize._();

  void initSize(BuildContext context)
  {
    h=MediaQuery.of(context).size.height;
    w=MediaQuery.of(context).size.width;
    w1=MediaQuery.of(context).size.topLeft(Offset(h*0.2, h*0.2));
    // MediaQueryData =MediaQuery.of(context).orientation;
  }

}