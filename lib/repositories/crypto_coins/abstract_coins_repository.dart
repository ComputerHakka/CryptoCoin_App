import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';

abstract interface class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
