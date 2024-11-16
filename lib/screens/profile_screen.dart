import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 15,
                      spreadRadius: 16,
                      offset: const Offset(1, 3)),
                ], borderRadius: BorderRadius.circular(300)),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/profileImage.jpg'),
                  radius: 100,
                ),
              ),
              const Gap(16.0),
              const Text(
                'Hi! Musharraf',
                style: TextStyle(
                    fontSize: 34.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              const Gap(16.0),
              Container(
                padding: const EdgeInsets.all(24.0),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(149, 119, 242, 1),
                    Color.fromRGBO(160, 133, 247, 1)
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 17, 14, 14)
                          .withOpacity(0.3), // Shadow color with opacity
                      spreadRadius: 8, // How much the shadow spreads
                      blurRadius: 12, // Softness of the shadow
                      offset: const Offset(4, 4),
                    )
                  ],
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTilesProfile(
                      text: 'Setting',
                      icon: Iconsax.setting,
                      onTap: () {},
                    ),
                    Divider(),
                    ListTilesProfile(
                      text: 'Home',
                      icon: Iconsax.home,
                      onTap: () {},
                    ),
                    Divider(),
                    ListTilesProfile(
                      text: 'Drawer',
                      icon: Iconsax.driver,
                      onTap: () {},
                    ),
                    Divider(),
                    ListTilesProfile(
                      text: 'Something',
                      icon: Iconsax.sms_notification,
                      onTap: () {},
                    ),
                    Divider(),
                    ListTilesProfile(
                      text: 'Anything',
                      icon: Iconsax.message,
                      onTap: () {},
                    ),
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

class ListTilesProfile extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  const ListTilesProfile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white,
      ),
    );
  }
}
