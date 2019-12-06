// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class WeatherEvent extends Equatable {
  const WeatherEvent(this._type);

  factory WeatherEvent.getWeather({@required String cityName}) = GetWeather;

  final _WeatherEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(GetWeather) getWeather}) {
    switch (this._type) {
      case _WeatherEvent.GetWeather:
        return getWeather(this as GetWeather);
    }
  }

  @override
  List get props => null;
}

@immutable
class GetWeather extends WeatherEvent {
  const GetWeather({@required this.cityName}) : super(_WeatherEvent.GetWeather);

  final String cityName;

  @override
  String toString() => 'GetWeather(cityName:${this.cityName})';
  @override
  List get props => [cityName];
}
