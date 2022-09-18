import 'package:flutter/material.dart';
import 'package:netflix_flutter/providers/providers.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Container(
          height: 35,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.25),
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            onSubmitted: (enteredText) {
              Provider.of<SearchBarProvider>(
                context,
                listen: false,
              ).setQuery(enteredText);
            },
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(0.5),
              ),
              hintText: 'Search',
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
