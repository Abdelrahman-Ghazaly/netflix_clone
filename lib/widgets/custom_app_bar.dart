import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.black,
      child: SafeArea(
        child: Column(
          children: [
            // Coming Soon Bar
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _AppBarIconButton(
                          onTap: () {},
                          icon: Icons.collections_bookmark,
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        _AppBarIconButton(
                          onTap: () {},
                          icon: Icons.account_box,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBarIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;

  const _AppBarIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: 28.0,
        color: Colors.white,
      ),
    );
  }
}
