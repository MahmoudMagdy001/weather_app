// ignore_for_file: unused_catch_clause

import 'package:bloc/bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherService) : super(WeatherInitial());
  WeatherService weatherService;

  String? cityName;
  WeatherModel? weatherModel;
  void getWeather({required String cityName}) async {
    emit(WeatherLoading());
    try {
      weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess(weatherModel: weatherModel!));
    } on Exception catch (e) {
      emit(WeatherError());
    }
  }
}
