import 'package:weather_app/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(super.id, super.nameCountry, super.main, super.description, super.pressure);

  factory WeatherModel.fromJson(Map<String,dynamic> json) => WeatherModel(
      json['id'],
      json['name'],
      json['weather'][0]['main'],
      json['weather'][0]['description'],
      json['main']['pressure'],
    );

}
