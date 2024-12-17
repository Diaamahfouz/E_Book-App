import 'package:e_book/core/utils/styles.dart';
import 'package:e_book/features/home/presentation/views/widgets/book_details_section.dart';

import 'package:e_book/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';

import 'package:e_book/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:e_book/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomAppBarBookDetails(),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
