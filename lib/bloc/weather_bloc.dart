import 'dart:async';

import 'package:bloc/bloc.dart';

import './bloc.dart';
import '../data/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository);

  @override
  WeatherState get initialState => WeatherState.initial();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    yield WeatherState.loading();
    yield* event.when(
      getWeather: (e) => mapGetWeatherToState(e),
    );
  }

  Stream<WeatherState> mapGetWeatherToState(GetWeather e) async* {
    try {
      final weather = await weatherRepository.fetchWeather(e.cityName);
      yield WeatherState.loaded(weather: weather);
    } on NetworkError {
      yield WeatherState.error(
          message: "Couldn't fetch weather. Is the device online?");
    }
  }
}
