# 🌤️ Flutter Weather App

A Flutter application that allows users to search for real-time weather data of any city using the OpenWeatherMap API. The app provides temperature, humidity, wind speed, and sunrise/sunset times with a beautiful UI and animations.

---

## ✨ Features

- Search weather by city name
- Real-time weather data using OpenWeatherMap API
- Sunrise and sunset time shown in local format (with AM/PM)
- Dynamic Lottie animations for weather conditions (Clear, Cloudy, Rainy)
- Gradient background changes based on weather
- Lightweight and responsive UI



🧠 Approach

The app follows a straightforward and modular approach:

- Uses the OpenWeatherMap API to fetch real-time weather data based on the city name entered by the user.
- The API response is parsed into a custom Weather model containing temperature, description, wind speed, humidity, and timestamps for sunrise and sunset.
- A dedicated WeatherCard widget is used to display the data visually, including:
  - Temperature and weather description
  - Humidity and wind speed
  - Sunrise and sunset time, converted to local time using the timezone offset
  - Dynamic Lottie animations based on weather type (clear, cloudy, rainy)
- The background gradient also changes based on the weather condition.
- State is managed using Flutter’s setState() for simplicity and clarity.


## 🚀 Installation

Follow these steps to set up and run the project:

```bash
# Clone the repository
git clone https://github.com/yourusername/weather_app.git
cd weather_app

# Install Flutter dependencies
flutter pub get

# Run the app on connected device/emulator
flutter run
