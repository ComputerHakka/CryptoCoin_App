import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  CryptoCoin? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(
        args != null && args is CryptoCoin, 'You must provide CryptoCoin args');
    coinName = args as CryptoCoin;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.network(
              coinName!.imageUrl,
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 15),
            Text(coinName?.name ?? 'Неопознано'),
            const SizedBox(height: 15),
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 24, 23, 23),
              ),
              child: Center(
                child: Text(
                  '${coinName?.priceInUSD.toString()} \$',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
