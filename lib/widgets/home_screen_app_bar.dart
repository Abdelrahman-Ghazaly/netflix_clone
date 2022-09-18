import 'package:flutter/material.dart';
import 'package:netflix_flutter/assets.dart';

class HomeScreenAppBar extends StatelessWidget {
  final double scrollOffset;

  const HomeScreenAppBar({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      child: SafeArea(
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(Assets.netflixLogo0),
              const SizedBox(width: 12.0),
              _AppBarButton(title: 'TV Shows', onTap: () {}),
              _AppBarButton(title: 'Movies', onTap: () => {}),
              _AppBarButton(title: 'My List', onTap: () => {}),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const _AppBarButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
