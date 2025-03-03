import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/slider_model.dart';
import '../utils/constants.dart';


class DBHelper {
  static Future<List<SliderModel>> fetchSliders() async {
    final response = await http.get(Uri.parse("${baseUrl}sliders"));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => SliderModel.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load sliders");
    }
  }
}
