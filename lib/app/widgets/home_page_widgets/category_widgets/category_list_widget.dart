import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        color: AppTheme.backgroundContainer,
        height: size.height * 0.12, //80.04
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          children: const [
            CategoryWidget(title: '', iconData: Icons.tune),
            CategoryWidget(
              title: 'Dogs',
              iconData: Icons.pets,
              isSelected: true,
            ),
            CategoryWidget(
              title: 'Cats',
              iconData: Icons.pets,
            ),
            CategoryWidget(
              title: 'Birds',
              iconData: Icons.pets,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool isSelected;
  const CategoryWidget({
    super.key,
    required this.title,
    required this.iconData,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.primaryColor : AppTheme.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: isSelected ? AppTheme.iconPets2 : AppTheme.iconPets,
            size: size.height * 0.04, //26.68
          ),
          title.isNotEmpty
              ? Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          isSelected ? AppTheme.textColor3 : AppTheme.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class SliverToBoxAdapterTopWidget extends StatelessWidget {
  const SliverToBoxAdapterTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        color: Theme.of(context).cardColor,
        height: size.height * 0.03, //20.01
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: size.height * 0.03, //20.01
              decoration: BoxDecoration(
                color: AppTheme.backgroundContainer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
