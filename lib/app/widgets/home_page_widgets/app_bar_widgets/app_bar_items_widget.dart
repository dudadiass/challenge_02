import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:challenge_02/app/utils/images.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key, required});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppTheme.backgroundColor,
      toolbarHeight: 110,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
              width: 45,
              height: 45,
              child: Icon(
                Icons.menu,
                size: 40,
                color: AppTheme.text2,
              )),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Location',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                ),
                const Text(
                  'Cameron St., Boston',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 45,
            height: 45,
            child: CircleAvatar(
              backgroundImage: AssetImage(Images.avatarImage),
            ),
          )
        ],
      ),
      floating: false,
    );
  }
}
