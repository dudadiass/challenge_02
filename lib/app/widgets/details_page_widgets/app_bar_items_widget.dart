import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:challenge_02/app/utils/routes.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 85,
      leading: IconButton(
        onPressed: () => Navigator.pop(context, AppRouter.home),
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 30,
          color: AppTheme.iconMenu,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.red.shade100),
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
