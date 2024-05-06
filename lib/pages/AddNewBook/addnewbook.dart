import 'package:flutter/material.dart';
import 'package:storystack/Components/backbutton.dart';
import 'package:storystack/Components/multilineformfield.dart';
import 'package:storystack/Components/textfield.dart';

class AddNewBookPage extends StatelessWidget {
  const AddNewBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
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
                              Text("Add New Book",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background)),
                              const SizedBox(
                                height: 100,
                                width: 65,
                              ),
                            ]),
                        Container(
                          height: 190,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).colorScheme.background),
                          child: Icon(Icons.add),
                        ),
                        SizedBox(height: 20),
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
                  MyTextFormField(
                      hintText: "Book title",
                      icon: Icons.book,
                      controller: controller),
                  const SizedBox(
                    height: 10,
                  ),
                  MultiLineTextField(
                      hintText: "Book Description", controller: controller),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                      hintText: "Author Name",
                      icon: Icons.person,
                      controller: controller),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                      hintText: "About Author",
                      icon: Icons.person,
                      controller: controller),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: MyTextFormField(
                        hintText: "Price",
                        icon: Icons.currency_rupee,
                        controller: controller,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: MyTextFormField(
                        hintText: "Pages",
                        icon: Icons.book,
                        controller: controller,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: MyTextFormField(
                        hintText: "Language",
                        icon: Icons.language,
                        controller: controller,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: MyTextFormField(
                        hintText: "Audio Len",
                        icon: Icons.audiotrack,
                        controller: controller,
                      ))
                    ],
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
