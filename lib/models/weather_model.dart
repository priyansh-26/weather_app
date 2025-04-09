class Weather {
  final String cityName;
  final double temperature;
  final String description;
  final int humidity;
  final double windSpeed;
  final int sunrise;
  final int sunset;
  final int timezone;

  Weather( {
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.windSpeed,
    required this.sunrise,
    required this.sunset,
    required this.timezone,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        cityName: json["name"],
        temperature: json["main"]["temp"] -273.15,
        description: json["weather"][0]["description"],
        humidity: json["main"]["humidity"],
        windSpeed: json["wind"]["speed"],
        sunrise: json["sys"]["sunrise"],
        timezone: json["timezone"],
        sunset: json["sys"]["sunset"]);
        
  }
}
