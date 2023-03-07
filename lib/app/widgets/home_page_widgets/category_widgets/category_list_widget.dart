import 'package:flutter/material.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
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
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.redAccent : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: isSelected ? Colors.white : Colors.grey.shade400,
            size: 30,
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
                      color: isSelected ? Colors.white : Colors.black,
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
