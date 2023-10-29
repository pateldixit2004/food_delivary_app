import 'package:flutter/cupertino.dart';
import 'package:food_delivary_app/screen/model/home_model.dart';

class HomeProvider extends ChangeNotifier {
  List<HomeModel> carouselSliderList = [
    HomeModel(
        image: "assets/img/pani-puri.jpg", name: "Pani-Puri", price: "100"),
    HomeModel(image: "assets/img/dal.jpg", name: "Dal", price: "100"),
    HomeModel(image: "assets/img/rice.jpg", name: "Rice", price: "100"),
  ];
  int carouselSliderIndex = 0;

  void changeSliderIndex(int value) {
    carouselSliderIndex = value;
    notifyListeners();
  }

  List image = [
    HomeModel(image: "assets/img/pani-puri.jpg", name: "Pani-Puri"),
    HomeModel(image: "assets/img/dal.jpg", name: "Dal"),
    HomeModel(
      image: "assets/img/rice.jpg",
      name: "Rice",
    ),
    HomeModel(
      image: "assets/img/pasta.jpg",
      name: "pasta",
    ),
    HomeModel(
      image: "assets/img/pizza.jpg",
      name: "pizza",
    ),
    HomeModel(
      image: "assets/img/susi.jpg",
      name: "susi",
    ),
    HomeModel(
      image: "assets/img/sandwich.jpg",
      name: "sandwich",
    ),
    HomeModel(image: "assets/img/pani-puri.jpg", name: "Pani-Puri"),
    HomeModel(image: "assets/img/dal.jpg", name: "Dal"),
    HomeModel(
      image: "assets/img/rice.jpg",
      name: "Rice",
    ),
    HomeModel(
      image: "assets/img/pasta.jpg",
      name: "pasta",
    ),
    HomeModel(
      image: "assets/img/pizza.jpg",
      name: "pizza",
    ),
    HomeModel(
      image: "assets/img/susi.jpg",
      name: "susi",
    ),
    HomeModel(
      image: "assets/img/sandwich.jpg",
      name: "sandwich",
    ),
  ];
}
