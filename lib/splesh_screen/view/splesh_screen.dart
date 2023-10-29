import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivary_app/utils/app_media_query/media_query.dart';
import 'package:food_delivary_app/utils/app_textStyle.dart';
import 'package:get/get.dart';

class SpleshScreen extends StatelessWidget {
  const SpleshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.offAllNamed("/bottom");
    });
    AppSize.appSize.initSize(context);
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Container(
                height: h * 1.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/pani-puri.jpg"),
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(h * 0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Taking Order Now",
                          style: spleshTextStle,
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "Order near location hotel",
                          style: spleshText,
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Positioned.fill(
                            child: Column(
                          children: [
                            Container(
                              height: h * 0.05,
                              width: w,
                              child: RawMaterialButton(
                                onPressed: () {},
                                shape: const StadiumBorder(),
                                fillColor: Colors.orange,
                                splashColor: Colors.deepOrange,
                                hoverColor: Colors.redAccent,
                                child: Center(
                                    child: Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: w * 0.025,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Container(
                              height: h * 0.05,
                              width: w,
                              child: MaterialButton(
                                onPressed: () {},
                                shape: const StadiumBorder(),
                                splashColor: Colors.deepOrange,
                                hoverColor: Colors.redAccent,
                                child: Center(
                                    child: Text(
                                  "Cancle",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w * 0.025,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Container(
                height: h * 1.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/pani-puri.jpg"),
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(h * 0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Taking Order Now",
                          style: spleshTextStle,
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "Order near location hotel",
                          style: spleshText,
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Positioned.fill(
                            child: Column(
                          children: [
                            Container(
                              height: h * 0.10,
                              width: w,
                              child: RawMaterialButton(
                                onPressed: () {},
                                shape: const StadiumBorder(),
                                fillColor: Colors.orange,
                                splashColor: Colors.deepOrange,
                                hoverColor: Colors.redAccent,
                                child: Center(
                                    child: Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: w * 0.015,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Container(
                              height: h * 0.10,
                              width: w,
                              child: MaterialButton(
                                onPressed: () {},
                                shape: StadiumBorder(),
                                splashColor: Colors.deepOrange,
                                hoverColor: Colors.redAccent,
                                child: Center(
                                  child: Text(
                                    "Cancle",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.015,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
