import 'package:flutter/material.dart';
import 'package:weatherapp/Views/screens/search_screen.dart';
import 'package:weatherapp/constant.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => const SearchScreen())));
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 40, vertical: 12)),
        backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: const Text('Search Now 🌦️'),
    );
  }
}
