import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary_app/screen/provider/home_provider.dart';
import 'package:food_delivary_app/utils/app_media_query/media_query.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerF;
  HomeProvider? providerT;

  @override
  Widget build(BuildContext context) {
    AppSize.appSize.initSize(context);
    providerF = Provider.of<HomeProvider>(context, listen: false);
    providerT = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  CarouselSlider(
                    items: providerF!.carouselSliderList
                        .asMap()
                        .entries
                        .map(
                          (e) => Container(
                            height: h * 0.052,
                            width: w,

                            // alignment: Alignment.bottomLeft,
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "${providerT!.carouselSliderList[e.key].image}",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${providerF!.carouselSliderList[e.key].name}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: w * 0.04),
                                  ),
                                  Text(
                                    "₨-${providerF!.carouselSliderList[e.key].price}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: w * 0.025),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        providerF!.changeSliderIndex(index);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: providerT!.carouselSliderList
                        .asMap()
                        .entries
                        .map(
                          (e) => Container(
                            height: h * 0.01,
                            width: w * 0.01,
                            margin: EdgeInsets.all(w * 0.02),
                            decoration: BoxDecoration(
                                color: providerT!.carouselSliderIndex == e.key
                                    ? Colors.red
                                    : Colors.amber),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text(
                    "Eat what makes you happy",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: h * 0.02),
                  ),

                  // SizedBox(
                  //   height: h * 0.001,
                  // ),
                  SizedBox(
                    // height: h * 0.25,
                    height: h * 0.10,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: h * 0.07,
                                width: w * 0.10,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "${providerF!.image[index].image}"),
                                  ),
                                ),
                              ),
                              Text("${providerF!.image[index].name}")
                            ],
                          ),
                        );
                      },
                      itemCount: providerF!.image.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Text(
                    "Eat what makes you happy",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: h * 0.02),
                  ),
                  SizedBox(
                    height: h * 0.4,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text("nsfdj");
                      },
                      itemCount: 10,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  )
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.5,
                      width: w,
                      child: CarouselSlider(
                        items: providerF!.carouselSliderList
                            .asMap()
                            .entries
                            .map(
                              (e) => Container(
                                height: h * 0.05,
                                width: w,

                                // alignment: Alignment.bottomLeft,
                                alignment: Alignment.bottomLeft,
                                decoration: BoxDecoration(
                                  // color: Colors.redAccent,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${providerT!.carouselSliderList[e.key].image}",
                                      ),
                                      fit: BoxFit.fill),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${providerF!.carouselSliderList[e.key].name}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: w * 0.04),
                                      ),
                                      Text(
                                        "₨-${providerF!.carouselSliderList[e.key].price}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: w * 0.025),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            providerF!.changeSliderIndex(index);
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: providerT!.carouselSliderList
                          .asMap()
                          .entries
                          .map(
                            (e) => Container(
                              height: h * 0.01,
                              width: w * 0.01,
                              margin: EdgeInsets.all(w * 0.02),
                              decoration: BoxDecoration(
                                  color: providerT!.carouselSliderIndex == e.key
                                      ? Colors.red
                                      : Colors.amber),
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    // ListTile(
                    //   leading: Text(
                    //     "Eat what makes you happy",
                    //     style: TextStyle(
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: w * 0.024),
                    //   ),
                    // ).
                  ],
                ),
              ),
            );
          }
        },
      )),
    );
  }
}
