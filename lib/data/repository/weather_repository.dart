import 'package:weather_app/data/datasource/remote_data_source.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSources baseRemoteDataSources;

  WeatherRepository(this.baseRemoteDataSources);

  @override
  Future<Weather> getWeatherByCountryName(String countryName) async {
    // TODO: implement getWeatherByCountryName
    return  await baseRemoteDataSources.getWeatherByCountryName(countryName);
  }

}