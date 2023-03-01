import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  //atributos do meu widget
  final String title;
  final IconData iconData;
  final bool selected;
  const CategoryWidget({
    super.key,
    required this.title,
    required this.iconData,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 30, top: 15),
      decoration: BoxDecoration(
        color: selected ? Colors.red : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: selected ? Colors.white : Colors.grey.shade400,
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
                      color: selected ? Colors.white : Colors.black,
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
