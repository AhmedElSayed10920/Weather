import 'package:flutter/material.dart';
import 'package:weatherapp/Views/widgets/search_button.dart';
import 'package:weatherapp/constant.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('There is no Weather Info 😕',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                )),
            const SizedBox(
              height: 10,
            ),
            const SearchButton()
          ],
        ),
      ),
    );
  }
}

