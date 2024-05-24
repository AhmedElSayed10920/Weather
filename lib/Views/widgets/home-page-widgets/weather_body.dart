import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/weathercubit/weather_cubit.dart';
import 'package:weatherapp/functions/get_theme_color.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key, required this.weather});
  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<WeatherCubit>(context).weatherModel!;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              getThemeColor(weatherModel.weatherCondition),
              getThemeColor(weatherModel.weatherCondition)[300]!,
              getThemeColor(weatherModel.weatherCondition)[50]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(weatherModel.cityName,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text(
                'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                style: const TextStyle(
                  fontSize: 20,
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 95,
                    height: 95,
                    child: Image.network('https:${weatherModel.image}')),
                Text('${weatherModel.temp.round()}',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                Column(
                  children: [
                    Text(
                      'maxTemp : ${weatherModel.maxTemp.round()}',
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      'minTemp : ${weatherModel.minTemp.round()}',
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(weatherModel.weatherCondition,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
