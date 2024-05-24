import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/services/weather_service.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  WeatherModel? weatherModel;
  void getWeatherBody(String cityName) async {
    try {
      emit(WeatherLoading());
      weatherModel =
          await WeatherService(Dio()).getWeatherData(cityName: cityName);
      emit(WeatherSuccess(weatherModel: weatherModel!));
    } on Exception catch (e) {
      log(e.toString());
      emit(WeatherFailure());
    }
  }
}
