import 'package:flutter/material.dart';
import 'package:foodappclone/widgets/category_component.dart';
import 'package:foodappclone/widgets/product_component.dart';
import 'package:foodappclone/widgets/promo_card.dart';
import 'package:foodappclone/widgets/search_field.dart';
import 'package:foodappclone/widgets/title_text.dart';
import 'package:foodappclone/widgets/topbar.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 24.0, right: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBar(),
                const Gap(24),
                const SearchField(),
                const Gap(24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryButton(
                        label: 'All',
                        imgPath: "assets/Picture3.png",
                        onSelectCategory: (String) {},
                      ),
                      CategoryButton(
                        label: 'Burgers',
                        imgPath: "assets/Picture1.png",
                        onSelectCategory: (String) {},
                      ),
                      CategoryButton(
                        label: 'Pizzas',
                        imgPath: "assets/Picture2.png",
                        onSelectCategory: (String) {},
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                const TitleText(text: 'Promotions'),
                const Gap(10),
                const PromoCard(),
                const Gap(10),
                const TitleText(text: 'Popular'),
                const Gap(10),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProductComponents(),
                      ProductComponents(),
                      ProductComponents(),
                      ProductComponents(),
                      ProductComponents(),
                      ProductComponents(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
