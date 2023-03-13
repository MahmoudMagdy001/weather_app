// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../models/weather_model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  WeatherModel weatherModel;
  WeatherSuccess({
    required this.weatherModel,
  });
}

class WeatherError extends WeatherState {}
