import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return TextFormField(
      controller: searchController,
      decoration: const InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(83, 172, 166, 166),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          prefixIcon: Icon(Iconsax.search_normal),
          hintText: 'Search',
          hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 20)),
    );
  }
}
