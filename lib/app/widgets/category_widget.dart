import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  //atributos do meu widget
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
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.red : Colors.white,
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
                    left: 9,
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
