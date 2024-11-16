import 'package:flutter/material.dart';
import 'package:foodappclone/widgets/product_component.dart';
import 'package:foodappclone/widgets/search_field.dart';
import 'package:foodappclone/widgets/title_text.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchField(),
              const Gap(16.0),
              const TitleText(
                text: 'Find Your Favourite Food',
              ),
              const Gap(16.0),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    mainAxisExtent: 200.0,
                  ),
                  children: const [
                    ProductComponents(),
                    ProductComponents(),
                    ProductComponents(),
                    ProductComponents(),
                    ProductComponents(),
                    ProductComponents(),
                    ProductComponents(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
