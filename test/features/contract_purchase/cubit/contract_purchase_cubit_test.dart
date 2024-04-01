import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tap_invest_assignment/features/contract_purchase/cubit/contract_purchase_cubit.dart';

void main() {
  group(
    'Contract Purchase Cubit:',
    () {
      blocTest(
        'should return error when amount is not entered',
        build: () => ContractPurchaseCubit(),
        act: (cubit) {
          cubit.validateAmmount();
        },
        expect: () => [
          ContractPurchaseState.initial(
              max: 100000,
              min: 50000,
              netYield: 13.11,
              totalReturn: '-',
              errorMessage: 'Please enter an amount.')
        ],
      );
      blocTest(
        'should return total return when amount entered in range',
        build: () => ContractPurchaseCubit(),
        act: (cubit) {
          cubit.textController.text = '50000';
          cubit.validateAmmount();
        },
        expect: () => [
          ContractPurchaseState.initial(
            max: 100000,
            min: 50000,
            netYield: 13.11,
            totalReturn: '56555',
          )
        ],
      );
      blocTest(
        'should return error when amount is not in range',
        build: () => ContractPurchaseCubit(),
        act: (cubit) {
          cubit.textController.text = '40000';
          cubit.validateAmmount();
        },
        expect: () => [
          ContractPurchaseState.initial(
            max: 100000,
            min: 50000,
            netYield: 13.11,
            totalReturn: '-',
            errorMessage: 'Please enter amount in range 50000 to 100000.',
          )
        ],
      );
    },
  );
}
