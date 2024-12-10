import 'package:e_book/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            text: '19.99 \$',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.blue,
            text: 'Free',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
