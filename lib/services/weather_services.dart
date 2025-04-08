import 'package:weather_app/models/weather_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherServices {
  final String apikey = "acd81bb6f223e5461101fcb0eeeae23d";
  
  get http => null;

  Future<Weather> fetchWeather(String cityName) async {
    final url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apikey");

    final response = await http.get(url);

    if(response.statusCode==200){
      return Weather.fromJson(json.decode(response.body));

    }else{
      throw Exception('Failed to load data!');
    }
  }
}
