import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:challenge_02/app/utils/routes.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
      toolbarHeight: size.width * 0.215,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context, AppRouter.home),
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: size.width * 0.080,
          color: AppTheme.iconMenu,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: size.width * 0.12,
                  width: size.width * 0.12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppTheme.iconFavoriteContainer),
                  child: Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
