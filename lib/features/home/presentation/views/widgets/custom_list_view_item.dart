import 'package:e_book/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 2.2 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.testImage,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
