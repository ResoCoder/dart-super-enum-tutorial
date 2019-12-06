import 'package:super_enum/super_enum.dart';

import '../data/model/weather.dart';

part 'weather_state.g.dart';

@superEnum
enum _WeatherState {
  @object
  Initial,
  @object
  Loading,
  @Data(fields: [
    DataField('weather', Weather),
  ])
  Loaded,
  @Data(fields: [
    DataField('message', String),
  ])
  Error,
}
