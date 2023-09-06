import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository baseWeatherRepository;

  GetWeatherByCountryName(this.baseWeatherRepository);

  Future<Weather> execute(String countryName) async{
    return await baseWeatherRepository.getWeatherByCountryName(countryName);
  }
}
