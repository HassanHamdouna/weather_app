import 'dart:convert';
import 'package:weather_app/core/utils/constants.dart';
import 'package:weather_app/data/model/weather_model.dart';
import 'package:dio/dio.dart';


abstract class BaseRemoteDataSources {
  Future<WeatherModel> getWeatherByCountryName(String countryName);
}

class RemoteDataSources implements BaseRemoteDataSources {

  @override
  Future<WeatherModel> getWeatherByCountryName(String countryName) async {
    try {
      final response = await Dio().get('${AppConstants.baseUrl}/weather?q=${countryName}&appid=${AppConstants.apiKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print('response $e');
      throw e;
    }
  }
}
