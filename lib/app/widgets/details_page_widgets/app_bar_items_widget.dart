import 'package:challenge_02/app/utils/routes.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context, AppRouter.home),
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      actions: [
        Icon(
          Icons.favorite,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
