import 'package:flutter/material.dart';
import 'package:storystack/Config/colors.dart';
import 'package:storystack/Models/book_model.dart';
import 'package:storystack/Pages/BookDetails/BookActionBtn.dart';
import 'package:storystack/pages/BookDetails/book_detailheader.dart';

class BookDetails extends StatelessWidget {
  final BookModel book;
  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              // height: 500,
              color: primaryColor,
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 0,
                      ),
                      BookDetailsHeader(
                        coverUrl: book.coverUrl!,
                        title: book.title!,
                        author: book.author!,
                        description: book.description!,
                        rating: book.rating!,
                        pages: book.pages.toString(),
                        language: book.language!,
                        audioLen: book.audioLen!,
                      ),
                    ],
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "About book",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: Text(
                        book.description!,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.labelMedium,
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "About Author",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Francis Scott Key Fitzgerald (September 24, 1896 – December 21, 1940) was an American novelist, essayist, and short story writer. He is best known for his novels depicting the flamboyance and excess of the Jazz Age—a term he popularized in his short story collection Tales of the Jazz Age. ",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BookActionBtn(
                    bookUrl: book.bookurl!,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
