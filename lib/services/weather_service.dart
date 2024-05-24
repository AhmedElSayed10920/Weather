import 'package:dio/dio.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);

  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'a6d5a1cfc54d4028b37182007230111';
  Future<WeatherModel> getWeatherData({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data['error']['message'] ?? 'oops something went wrong';
      throw Exception(errMessage);
    } catch (e) {
      throw Exception(e);
    }
  }
}
