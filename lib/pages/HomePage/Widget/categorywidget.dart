import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import Flutter_svg for SVG support

class CategoryWidget extends StatelessWidget {
  final String iconPath;
  final String btnName;

  const CategoryWidget(
      {super.key, required this.iconPath, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Row(
            children: [
              iconPath.toLowerCase().endsWith('.svg')
                  ? SvgPicture.asset(
                      iconPath,
                      width: 24,
                      height: 24,
                    )
                  : Image.asset(
                      iconPath,
                      width: 24,
                      height: 24,
                    ),
              const SizedBox(width: 10),
              Text(btnName),
            ],
          ),
        ),
      ),
    );
  }
}
