part of 'contract_purchase_cubit.dart';

@freezed
class ContractPurchaseState with _$ContractPurchaseState {
  const factory ContractPurchaseState({
    required int max,
    required int min,
    required double netYield,
    required String totalReturn,
    String? errorMessage,
  }) = _ContractPurchaseState;

  factory ContractPurchaseState.initial({
    int max = 100000,
    int min = 50000,
    double netYield = 13.11,
    String totalReturn = '-',
    String? errorMessage,
  }) =>
      _ContractPurchaseState(
        max: max,
        min: min,
        netYield: netYield,
        totalReturn: totalReturn,
        errorMessage: errorMessage,
      );
}
