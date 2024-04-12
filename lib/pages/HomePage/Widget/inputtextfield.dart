import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          InkWell(
              onTap: () {}, child: SvgPicture.asset("Assets/Icons/search.svg")),
          const SizedBox(
            width: 10,
            height: 3,
          ),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Search here . .",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
