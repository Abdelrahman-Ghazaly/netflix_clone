// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:netflix_flutter/models/models.dart';

class ComingSoonCards extends StatelessWidget {
  final contentList;

  const ComingSoonCards({
    Key? key,
    required this.contentList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(contentList.length, (index) {
        final Content content = contentList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(content.backdrop!),
                      fit: BoxFit.cover,
                      alignment: Alignment.center),
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      icon: Icons.notifications_none_outlined,
                      onTap: () {},
                      title: 'Remind Me',
                    ),
                    const SizedBox(width: 15.0),
                    CustomButton(
                      icon: Icons.info_outline,
                      onTap: () {},
                      title: 'Info',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Coming on ' + content.releaseDate!,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  content.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  content.description!,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final IconData icon;

  const CustomButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }
}
