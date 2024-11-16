import 'package:flutter/material.dart';
import 'package:foodappclone/provider/bottom_navigation_index_provider.dart';
import 'package:foodappclone/widgets/product_component.dart';
import 'package:foodappclone/widgets/search_field.dart';
import 'package:foodappclone/widgets/title_text.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final indexProvider = Provider.of<BottomNavigationIndexProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => indexProvider.setValueToZero(),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(70, 43, 156, 1),
                              Color.fromRGBO(100, 74, 181, 1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Gap(8.0),
                  const Expanded(flex: 8, child: SearchField()),
                ],
              ),
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
