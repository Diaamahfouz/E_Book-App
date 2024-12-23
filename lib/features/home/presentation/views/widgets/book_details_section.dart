import 'package:e_book/core/utils/styles.dart';
import 'package:e_book/features/home/presentation/views/widgets/book_rating.dart';
import 'package:e_book/features/home/presentation/views/widgets/books_action.dart';
import 'package:e_book/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.29,
        ),
        child: const CustomBookImage(),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        'The Jungle Book ',
        style: Styles.textStyle30,
      ),
      const SizedBox(
        height: 2,
      ),
      Text(
        'Rudyard Kipling ',
        style: Styles.textStyle20.copyWith(
          fontStyle: FontStyle.italic,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      const BookRating(),
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: BooksAction(),
      )
    ]);
  }
}
