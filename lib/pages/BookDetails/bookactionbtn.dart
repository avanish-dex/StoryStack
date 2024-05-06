import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:storystack/Config/colors.dart';
import 'package:storystack/pages/BookPage/bookpage.dart';

class BookActionBtn extends StatelessWidget {
  final String bookUrl;
  const BookActionBtn({super.key, required this.bookUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.to(BookPage(
                bookUrl: bookUrl,
              ));
            },
            child: Row(
              children: [
                SvgPicture.asset("Assets/Icons/book.svg"),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "READ BOOK",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.background,
                      letterSpacing: 1.3),
                )
              ],
            ),
          ),
          // Container(
          //   width: 2,
          //   height: 30,
          //   decoration: BoxDecoration(
          //       color: Theme.of(context).colorScheme.background,
          //       borderRadius: BorderRadius.circular(10)),
          // ),
          // Row(
          //   children: [
          //     SvgPicture.asset("Assets/Icons/playe.svg"),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     Text(
          //       "PLAY BOOK",
          //       style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          //           color: Theme.of(context).colorScheme.background,
          //           letterSpacing: 1.3),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}