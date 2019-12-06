// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class WeatherState extends Equatable {
  const WeatherState(this._type);

  factory WeatherState.initial() = Initial;

  factory WeatherState.loading() = Loading;

  factory WeatherState.loaded({@required Weather weather}) = Loaded;

  factory WeatherState.error({@required String message}) = Error;

  final _WeatherState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Initial) initial,
      @required R Function(Loading) loading,
      @required R Function(Loaded) loaded,
      @required R Function(Error) error}) {
    switch (this._type) {
      case _WeatherState.Initial:
        return initial(this as Initial);
      case _WeatherState.Loading:
        return loading(this as Loading);
      case _WeatherState.Loaded:
        return loaded(this as Loaded);
      case _WeatherState.Error:
        return error(this as Error);
    }
  }

  @override
  List get props => null;
}

@immutable
class Initial extends WeatherState {
  const Initial._() : super(_WeatherState.Initial);

  factory Initial() {
    _instance ??= Initial._();
    return _instance;
  }

  static Initial _instance;
}

@immutable
class Loading extends WeatherState {
  const Loading._() : super(_WeatherState.Loading);

  factory Loading() {
    _instance ??= Loading._();
    return _instance;
  }

  static Loading _instance;
}

@immutable
class Loaded extends WeatherState {
  const Loaded({@required this.weather}) : super(_WeatherState.Loaded);

  final Weather weather;

  @override
  String toString() => 'Loaded(weather:${this.weather})';
  @override
  List get props => [weather];
}

@immutable
class Error extends WeatherState {
  const Error({@required this.message}) : super(_WeatherState.Error);

  final String message;

  @override
  String toString() => 'Error(message:${this.message})';
  @override
  List get props => [message];
}
