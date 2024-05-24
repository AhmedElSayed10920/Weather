import 'package:flutter/material.dart';
import 'package:weatherapp/Views/widgets/custom_text_field_search.dart';
import 'package:weatherapp/constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search City',
          style: TextStyle(color: Colors.white),
        ),
         backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const CustomTextFieldSearch(),
    );
  }
}
