import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:challenge_02/app/utils/images.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key, required});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      backgroundColor: AppTheme.backgroundColor,
      toolbarHeight: size.height * 0.16, //106.72
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              child: Icon(
            Icons.menu,
            size: size.height * 0.05,
            color: AppTheme.iconMenu,
          )),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Location',
                  style: AppTheme.themeData().textTheme.headline4,
                ),
                Text(
                  'Cameron St., Boston',
                  style: AppTheme.themeData().textTheme.headline3,
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.12,
            height: size.height * 0.0674,
            child: const CircleAvatar(
              backgroundImage: AssetImage(Images.avatarImage),
            ),
          )
        ],
      ),
      floating: false,
    );
  }
}
