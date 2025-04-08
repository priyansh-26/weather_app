import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;
  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration:
              BoxDecoration(color: const Color.fromARGB(125, 255, 255, 255)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Lottie.asset(
                weather.description.contains("rain")
                    ? "assets/rain.json"
                    : weather.description.contains("clear")
                        ? "assets/sunny.json"
                        : "assets/cloudy.json",
                height: 150,
                width: 150,
              ),
              

            ],
          ),
        ),
      ],
    );
  }
}
