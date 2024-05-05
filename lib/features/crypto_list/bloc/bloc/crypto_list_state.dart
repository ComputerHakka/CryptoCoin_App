part of 'crypto_list_bloc.dart';

sealed class CryptoListState extends Equatable {}

final class CryptoListInitial extends CryptoListState {
  @override
  List<Object?> get props => [];
}

final class CryptoListLoading extends CryptoListState {
  @override
  List<Object?> get props => [];
}

final class CryptoListLoaded extends CryptoListState {
  CryptoListLoaded({
    required this.coinsList,
  });

  final List<CryptoCoin> coinsList;

  @override
  List<Object?> get props => [coinsList];
}

final class CryptoListLoadingFailure extends CryptoListState {
  final Object? exception;

  CryptoListLoadingFailure({required this.exception});

  @override
  List<Object?> get props => [exception];
}
