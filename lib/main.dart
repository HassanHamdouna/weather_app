import 'package:flutter/material.dart';
import 'package:weather_app/data/datasource/remote_data_source.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repository/base_weather_repository.dart';
import 'package:weather_app/domain/usecase/get_weather_by_country_name.dart';

void main() async {
  BaseRemoteDataSources remoteDataSources = RemoteDataSources();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(remoteDataSources);
  Weather weather = await GetWeatherByCountryName(baseWeatherRepository).execute("egypt");
  print(weather);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TutorialHome(),
    );
  }
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: const Center(
        child: Text('Hello, world!'),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
