// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:storystack/Components/bookcard.dart';
import 'package:storystack/Components/booktile.dart';
import 'package:storystack/Components/mydrawer.dart';
import 'package:storystack/Controller/bookcontroller.dart';
import 'package:storystack/Models/book_model.dart';
import 'package:storystack/Models/category_data.dart';
import 'package:storystack/pages/BookDetails/bookdetails.dart';
import 'package:storystack/pages/HomePage/Widget/appbar.dart';
import 'package:storystack/pages/HomePage/Widget/categorywidget.dart';
import 'package:storystack/pages/HomePage/Widget/inputtextfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.put(BookController());
    bookController.getUserBook();
    return Scaffold(
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              color: Theme.of(context).colorScheme.primary,
              // height: 500,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          const HomeAppBar(),
                          const SizedBox(height: 50),
                          Row(
                            children: [
                              Text(
                                "Good Morining✌️",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                              Flexible(
                                child: Text(
                                  bookController.getUsernameFromFirebase() ??
                                      'User', // Provide a default value if username is null
                                  maxLines: 1, // Limit the number of lines to 1
                                  overflow: TextOverflow
                                      .ellipsis, // Use ellipsis (...) for overflowed text
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Time to read book and enhance your knowledge",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    child: MyInputTextField(
                                        booksList:
                                            bookController.bookData.toList()))
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData
                                  .map(
                                    (e) => CategoryWidget(
                                        iconPath: e["icon"]!,
                                        btnName: e["lebel"]!),
                                  )
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Trending",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(
                        () => Row(
                          children: bookController.bookData
                              .map(
                                (e) => BookCard(
                                  title: e.title!,
                                  coverUrl: e.coverUrl!,
                                  ontap: () {
                                    Get.to(BookDetails(
                                      book: e,
                                    ));
                                  },
                                ),
                              )
                              .toList(),
                        ),
                      )),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Obx(() => Column(
                        children: bookController.bookData
                            .map(
                              (e) => BookTile(
                                onTap: () {
                                  // Primary tap action
                                  Get.to(BookDetails(book: e));
                                },
                                ontap: () {
                                  // Secondary tap action
                                  // Implement what should happen on double tap here
                                },
                                title: e.title!,
                                coverUrl: e.coverUrl!,
                                author: e.author!,
                                price: e.price!,
                                rating: e.rating!,
                                totalRatings: "12",
                              ),
                            )
                            .toList(),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
