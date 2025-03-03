import 'package:flutter/material.dart';
import '../db/api_helper.dart';
import '../models/slider_model.dart';

class SliderProvider with ChangeNotifier {
  List<SliderModel> _sliders = [];
  bool _isLoading = false;

  List<SliderModel> get sliders => _sliders;
  bool get isLoading => _isLoading;

  Future<void> loadSliders() async {
    _isLoading = true;
    notifyListeners();

    try {
      _sliders = await DBHelper.fetchSliders();
    } catch (e) {
      print("Error: $e");
    }

    _isLoading = false;
    notifyListeners();
  }
}
