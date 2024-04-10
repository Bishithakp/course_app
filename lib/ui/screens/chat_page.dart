import 'package:flutter/material.dart';

import '../../constants/app_textstyle.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: "Search Data",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                ),
              ),
              const SizedBox(height:20),
              titleList(label: 'Courses For You'),
              heightBox(),
              scrollableList(),
              heightBox(),
              titleList(label: 'Trending'),
              heightBox(),
              scrollableList(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox heightBox() => const SizedBox(
        height: 10,
      );

  SizedBox scrollableList() {
    return SizedBox(
        height: 150.0,
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) => const Card(
            child: Center(child: Text('Dummy Card Text')),
          ),
        ));
  }

  Row titleList({required String label}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyle.appDefaultSTextStyle.copyWith(color: Colors.grey),
        ),
        Text(
          'See all',
          style: AppTextStyle.appDefaultSTextStyle.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
