import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key, required});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 120,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
              width: 50,
              height: 50,
              child: Icon(
                Icons.menu,
                color: Colors.red,
              )),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Location',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                ),
                const Text(
                  'Cameron, ST. Boston',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
      floating: false,
    );
  }
}
