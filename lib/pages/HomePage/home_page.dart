import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:storystack/Components/bookcard.dart';
import 'package:storystack/Components/booktile.dart';
import 'package:storystack/Models/category_data.dart';
import 'package:storystack/pages/HomePage/Widget/appbar.dart';
import 'package:storystack/pages/HomePage/Widget/categorywidget.dart';
import 'package:storystack/pages/HomePage/Widget/inputtextfield.dart';

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              color: Theme.of(context).colorScheme.primary,
              // height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const HomeAppBar(),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        "Good Morning 🤓👆",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      ),
                      Text(
                        "Duck",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "Time to read book and get smart smart",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const MyInputTextField(),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Topics",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.background,
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
                                iconPath: e["icon"]!, btnName: e["lebel"]!),
                          )
                          .toList(),
                    ),
                  ),
                ],
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
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookData
                          .map(
                            (e) => BookCard(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              ontap: () {},
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                      children: bookData
                          .map((e) => BookTile(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              author: e.author!,
                              price: e.price!,
                              rating: e.rating!,
                              totalRatings: e.totalRatings!))
                          .toList())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
