import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/Views/widgets/home-page-widgets/failure_screen.dart';
import 'package:weatherapp/Views/widgets/home-page-widgets/no_weather_body.dart';
import 'package:weatherapp/Views/widgets/home-page-widgets/weather_body.dart';
import 'package:weatherapp/cubits/weathercubit/weather_cubit.dart';

class ManageWeatherBodyStates extends StatelessWidget {
  const ManageWeatherBodyStates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherInitial) {
          return const NoWeatherBody();
        } else if (state is WeatherSuccess) {
          return  WeatherBody(weather: state.weatherModel,);
        } else if (state is WeatherLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const FailureWidget();
        }
      },
    );
  }
}