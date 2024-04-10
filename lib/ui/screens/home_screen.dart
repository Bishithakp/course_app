import 'package:flutter/material.dart';
import 'package:untitled/constants/app_textstyle.dart';

import '../widgets/course_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 7),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2018/01/21/14/16/woman-3096664_960_720.jpg'))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: AppTextStyle.appDefaultSTextStyle
                            .copyWith(fontSize: 14),
                      ),
                      Text(
                        'Tustoz',
                        style: AppTextStyle.appDefaultSTextStyle
                            .copyWith(fontSize: 20),
                      )
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  ),
                ],
              ),
              spaceBox(),
              SizedBox(
                width: 200,
                child: Text(
                  textAlign: TextAlign.left,
                  'What do You want to learn Today',
                  style:
                      AppTextStyle.appDefaultSTextStyle.copyWith(fontSize: 22),
                ),
              ),
              spaceBox(),
              titleList(label: 'Trending'),
              spaceBox(),
              scrollableList(),
              spaceBox(),
              titleList(label: 'Full Course'),
              spaceBox(),
              scrollableList(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox scrollableList() {
    return SizedBox(
        height: 150.0,
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) => CourseCard(),
        ));
  }

  Row titleList({required String label}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyle.appDefaultSTextStyle.copyWith(
              color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Text(
          'See all',
          style: AppTextStyle.appDefaultSTextStyle.copyWith(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  SizedBox spaceBox() => const SizedBox(
        height: 10,
      );
}

