import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../../constants/app_textstyle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(right: 7),
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      //borderRadius: BorderRadius.circular(5),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2018/01/21/14/16/woman-3096664_960_720.jpg'))),
                ),
              ),
              spaceBox(),
              Text(
                'Tustoz',
                style: AppTextStyle.appDefaultSTextStyle.copyWith(fontSize: 20),
              ),
              Text(
                'tutoz.doe@example.com',
                style: AppTextStyle.appDefaultSTextStyle
                    .copyWith(fontSize: 16, color: Colors.grey),
              ),
              button(icons: Icons.call, label: '+123 456 789'),
              spaceBox(),
              button(icons: Icons.message, label: 'tutoz.doe@example.com')
            ],
          ),
        ),
      ),
    );
  }

  TextButton button({required IconData icons, required String label}) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        
          backgroundColor: Color.fromARGB(255, 240, 226, 231)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              icons,
              color: const Color.fromARGB(255, 11, 56, 12),
            ),
          ),
          Text(
            label,
            style: AppTextStyle.appDefaultSTextStyle
                .copyWith(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }

  SizedBox spaceBox() => const SizedBox(
        height: 10,
      );
}
