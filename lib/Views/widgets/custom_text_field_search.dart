import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/constant.dart';
import 'package:weatherapp/cubits/weathercubit/weather_cubit.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Center(
        child: TextField(
            onSubmitted: (value)  {
              BlocProvider.of<WeatherCubit>(context).getWeatherBody(value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)),
                focusColor: kPrimaryColor,
                hintText: 'Enter city name',
                suffixIcon: const Icon(Icons.search),
                labelText: 'Search')),
      ),
    );
  }
}