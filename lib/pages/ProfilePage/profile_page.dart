import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storystack/Components/backbutton.dart';
import 'package:storystack/Components/booktile.dart';
import 'package:storystack/Models/category_data.dart';
import 'package:storystack/pages/AddNewBook/addnewbook.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddNewBookPage());
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyBackButton(),
                              Text("Profile",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background)),
                              SizedBox(width: 60),
                            ]),
                        SizedBox(height: 50),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.background,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "Assets/Images/scavengers.jpg",
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Avanish Mourya",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                        ),
                        SizedBox(height: 8),
                        Text("avanishm471@gmail.com",
                            style: Theme.of(context).textTheme.bodySmall),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Your books",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: bookData
                        .map((e) => BookTile(
                            title: e.title!,
                            onTap: () {},
                            coverUrl: e.coverUrl!,
                            author: e.author!,
                            price: e.price!,
                            rating: e.rating!,
                            totalRatings: e.totalRatings!))
                        .toList(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
