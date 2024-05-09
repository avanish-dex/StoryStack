// ignore_for_file: unused_import

import 'package:get/get.dart';
import 'package:storystack/Config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:storystack/Controller/authController.dart';
import 'package:storystack/pages/ProfilePage/profile_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset("Assets/Icons/dashboard.svg"),
          Text("StoryStack",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.background)),
          InkWell(
            onTap: () {
              Get.to(const ProfilePage());
            },
            child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.background,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child:
                      Image.network(authController.auth.currentUser!.photoURL!),
                )),
          )
        ]);
  }
}
