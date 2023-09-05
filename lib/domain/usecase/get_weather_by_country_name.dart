import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';

class GetWeatherByCountryName {
  final WeatherRepository weatherRepository;

  GetWeatherByCountryName(this.weatherRepository);

  Future<Weather> execute(String countryName) async{
    return await weatherRepository.getWeatherByCountryName(countryName);
  }
}
