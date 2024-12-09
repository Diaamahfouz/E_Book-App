import 'package:e_book/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.xmark,
            size: 32,
          ),
        ),
        Image.asset(
          AssetsData.logo,
          height: 150,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.cartShopping,
            size: 26,
          ),
        ),
      ],
    );
  }
}
