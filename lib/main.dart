import 'package:flutter/material.dart';
import 'package:toonflix/widgets/currency_card.dart';

import 'widgets/button.dart';

class Player {
  String name;
  Player({required this.name});
}

void main() {
  var nico = Player(name: 'potato');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818).withOpacity(0.8),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 22,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: 'Transfer',
                        bgColor: Colors.amber,
                        textColor: Colors.black),
                    Button(
                        text: 'Request ',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428 ',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  offset: Offset(0, 0),
                ),
                const CurrencyCard(
                  name: 'BitCoin',
                  code: 'EUR',
                  amount: '9 785 ',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                  offset: Offset(0, -20),
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428 ',
                  icon: Icons.attach_money_outlined,
                  isInverted: false,
                  offset: Offset(0, -40),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
