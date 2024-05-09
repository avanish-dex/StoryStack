import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storystack/Components/button.dart';
import 'package:storystack/Controller/authController.dart';
// ignore: unused_import
import 'package:storystack/pages/HomePage/home_page.dart';

class WelcomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const WelcomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 500,
                padding: const EdgeInsets.all(20),
                color: Theme.of(context).colorScheme.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 50),
                          Image.asset(
                            "Assets/Images/book.png",
                            width: 380,
                          ),
                          const SizedBox(height: 60),
                          Text(
                            "StoryStack",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                          ),
                          const SizedBox(height: 10),
                          Flexible(
                            child: Text(
                              " Dive into the World of Endless eBooks with StoreStack ",
                              textAlign: TextAlign.center,
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
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the image horizontally
                      children: [
                        Flexible(
                          child: Image.asset(
                            'Assets/Images/duck.png',
                            height: 180,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: PrimaryButton(
                btnName: " SIGN IN",
                ontap: () {
                  authController.loginWithEmail();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
