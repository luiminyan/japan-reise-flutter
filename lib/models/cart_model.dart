import 'package:flutter/material.dart';

// observer pattern ???
class CartModel extends ChangeNotifier{
  int noodlesoup = 0;
  int festival = 0;
  int tour = 0;
  int kimono = 0;

  // price list for the events
  Map<String, double> priceMap = {
    "Festival": 49.0,
    "Noodle": 19.0,
    "Fuji": 39.0,
    "Kimono": 10.0
  };

  void addNoodleSuppe() {
    noodlesoup++;
    // inform all listeners
    notifyListeners();
  }

  void removeNoodleSuppe() {
    if (noodlesoup > 0) {
      noodlesoup--;
    }
    // inform all listeners
    notifyListeners();
  }

  // remove from shopping cart
  void clearNoodleSoup() {
    noodlesoup = 0;
    notifyListeners();
  }

  void addFestival() {
    festival++;
    // inform all listeners
    notifyListeners();
  }

  void removeFestival() {
    if (festival > 0) {
      festival--;
    }
    // inform all listeners
    notifyListeners();
  }

  // remove from shopping cart
  void clearFesitval() {
    festival = 0;
    notifyListeners();
  }

  void addTour() {
    tour++;
    // inform all listeners
    notifyListeners();
  }

  void clearTour() {
    tour = 0;
    notifyListeners();
  }

  void removeTour() {
    if (tour > 0) {
      tour--;
    }
    // inform all listeners
    notifyListeners();
  }

  void clearKimono(){
    kimono = 0;
    notifyListeners();
  }

  void addKimono() {
    kimono++;
    notifyListeners();
  }

  void removeKimono() {
    if (kimono > 0) {
      kimono--;
    }
    notifyListeners();
  }

  // get
  int get totalItems => noodlesoup + festival + tour + kimono;

}