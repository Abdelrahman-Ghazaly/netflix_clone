import 'package:flutter/material.dart';
import 'package:netflix_flutter/models/models.dart';
import 'package:netflix_flutter/widgets/widgets.dart ';

import '../screens/screens.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({
    Key? key,
    required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.posterUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl!),
          ),
        ),
        Positioned(
          left:
              0, // When dealing with a Row widget, we need to know how far it expands.
          right:
              0, // Giving 0 to left and right allows it to expand to take the full width.
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(icon: Icons.add, title: 'List', onTap: () {}),
              _PlayButton(pageContext: context),
              VerticalIconButton(
                  icon: Icons.info_outline, title: 'Info', onTap: () {}),
            ],
          ),
        )
      ],
    );
  }
}

class _PlayButton extends StatefulWidget {
  final BuildContext pageContext;

  const _PlayButton({
    Key? key,
    required this.pageContext,
  }) : super(key: key);

  @override
  State<_PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<_PlayButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        setState(() {
          Navigator.push(widget.pageContext,
              MaterialPageRoute(builder: (context) => const MoviePlayer()));
        });
      },
      style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.fromLTRB(15, 5, 20, 5)),
      icon: const Icon(
        Icons.play_arrow,
        size: 30.0,
        color: Colors.black,
      ),
      label: const Text(
        'Play',
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    );
  }
}
