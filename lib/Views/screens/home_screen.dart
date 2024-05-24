import 'package:flutter/material.dart';
import 'package:weatherapp/Views/screens/search_screen.dart';
import 'package:weatherapp/Views/widgets/home-page-widgets/manage_weather_body_states.dart';
import 'package:weatherapp/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const SearchScreen())));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: const ManageWeatherBodyStates(),
    );
  }
}
