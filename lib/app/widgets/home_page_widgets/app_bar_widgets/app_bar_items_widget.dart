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
                color: AppTheme.iconMenu,
              )),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Location',
                  style: AppTheme.themeData().textTheme.headline3,
                ),
                Text(
                  'Cameron St., Boston',
                  style: AppTheme.themeData().textTheme.headline2,
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
