import 'package:flutter/material.dart';

class MeasurementNewState with ChangeNotifier {
  bool is1Saved = false;
  bool is2Saved = false;
  bool isSubmited = false;

  void toggleIs1Saved() {
    this.is1Saved = !this.is1Saved;
    notifyListeners();
  }

  void setIs1SetTrue() {
    this.is1Saved = true;
    notifyListeners();
  }

  void setIs1SetFalse() {
    this.is1Saved = false;
    notifyListeners();
  }

  void toggleIs2Saved() {
    this.is2Saved = !this.is2Saved;
    notifyListeners();
  }

  void setIs2SetTrue() {
    this.is2Saved = true;
    notifyListeners();
  }

  void setIs2SetFalse() {
    this.is2Saved = false;
    notifyListeners();
  }

  void setIsSubmitedTrue() {
    this.isSubmited = true;
    notifyListeners();
  }

  void setIsSubmitedFalse() {
    this.isSubmited = false;
    notifyListeners();
  }
}
