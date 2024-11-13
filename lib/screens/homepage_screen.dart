import 'package:flutter/material.dart';
import 'package:foodappclone/widgets/search_field.dart';
import 'package:foodappclone/widgets/topbar.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 12.0, left: 24.0, right: 24.0),
          child: Column(
            children: [
              TopBar(),
              Gap(24),
              SearchField(),
            ],
          ),
        ),
      ),
    );
  }
}
