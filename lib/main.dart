import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/Views/screens/home_screen.dart';
import 'package:weatherapp/cubits/weathercubit/weather_cubit.dart';
import 'package:weatherapp/functions/get_theme_color.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                useMaterial3: true,
                primarySwatch: getThemeColor(
                    BlocProvider.of<WeatherCubit>(context)
                        .weatherModel
                        ?.weatherCondition),
              ),
              home: const HomePage(),
              debugShowCheckedModeBanner: false,
            );
          },
        );
      }),
    );
  }
}
