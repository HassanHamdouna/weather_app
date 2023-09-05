import 'package:weather_app/domain/entities/weather.dart';

abstract class WeatherRepository{
   Future<Weather> getWeatherByCountryName(String countryName);
}