import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      child: Stack(
        children: [
          TextField(
            cursorColor: Constant().primaryColor,
            decoration: InputDecoration(
              fillColor: Constant().primaryColor,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              prefixIcon: const Icon(
                Icons.search_outlined,
                size: 30,
              ),
              hintText: "Search game",
              hintStyle: TextStyle(
                fontSize: 14,
                color: Constant().greyColor.withOpacity(0.7),
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 12,
            child: Container(
               padding: const EdgeInsets.all(5),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constant().primaryColor,
              ),
               child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
