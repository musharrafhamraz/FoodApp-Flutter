import 'package:flutter/material.dart';
import 'package:foodappclone/provider/bottom_navigation_index_provider.dart';
import 'package:foodappclone/widgets/button.dart';
import 'package:foodappclone/widgets/title_text.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final indexProvider = Provider.of<BottomNavigationIndexProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 24.0,
            right: 24.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleText(text: '2 Items in Cart'),
                const CartItem(),
                const CartItem(),
                const Gap(16.0),
                const TitleText(text: 'Payment Method'),
                const PaymentCardWidget(),
                const Gap(16.0),
                const TotalTaxCashWidget(
                  text: 'Subtotal',
                  amount: '23',
                ),
                const Gap(10.0),
                const TotalTaxCashWidget(
                  text: 'Tax 10%',
                  amount: '5',
                ),
                const Gap(10.0),
                const TotalCashWidget(amount: '57', text: 'Total'),
                const Gap(10.0),
                const Align(
                  alignment: Alignment.center,
                  child: MainButton(
                    text: 'Order',
                    bgcolor: Color.fromRGBO(70, 43, 156, 1),
                    textcolor: Colors.white,
                  ),
                ),
                const Gap(10.0),
                TextButton(
                    onPressed: () => indexProvider.setValueToZero(),
                    child: const Center(
                      child: Text(
                        'Go to Menu',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TotalCashWidget extends StatelessWidget {
  final String text;
  final String amount;
  const TotalCashWidget({
    super.key,
    required this.amount,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '\$ $amount',
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.amber),
        ),
      ],
    );
  }
}

class TotalTaxCashWidget extends StatelessWidget {
  final String text;
  final String amount;
  const TotalTaxCashWidget({
    super.key,
    required this.amount,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey),
        ),
        const Gap(8.0),
        Text(
          '\$ $amount',
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
      ],
    );
  }
}

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage('assets/Payment.png'),
              height: 55,
              width: 99,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Musharraf Hamraz",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '1234 5642 **** ****',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios_rounded)
          ],
        ));
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
              image: AssetImage('assets/Picture5.png'),
              height: 120,
              width: 120),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pizza Fries',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
              Text('\$12',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.amber)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Iconsax.minus_cirlce,
                    color: Color.fromRGBO(70, 43, 156, 1),
                  ),
                  Gap(12),
                  Text(
                    '1',
                    style: TextStyle(
                      color: Color.fromRGBO(70, 43, 156, 1),
                    ),
                  ),
                  Gap(12),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Iconsax.add_circle,
                      color: Color.fromRGBO(70, 43, 156, 1),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Iconsax.close_circle,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
