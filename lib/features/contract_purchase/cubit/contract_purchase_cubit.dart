import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest_assignment/core/utils/extensions.dart';

part 'contract_purchase_state.dart';
part 'contract_purchase_cubit.freezed.dart';

class ContractPurchaseCubit extends Cubit<ContractPurchaseState> {
  ContractPurchaseCubit() : super(ContractPurchaseState.initial());

  TextEditingController textController = TextEditingController();

  bool validateAmmount() {
    num inputValue = textController.text.extractNumbers();
    bool isValid = inputValue.isValueWithinRange(state.min, state.max);

    String? errorMessage = () {
      if (isValid) return null;
      final min = '${state.min}';
      final max = '${state.max}';
      return inputValue > 0
          ? 'Please enter amount in range $min to $max.'
          : 'Please enter an amount.';
    }();

    emit(
      state.copyWith(
        errorMessage: errorMessage,
        totalReturn: _computeTotalReturn(inputValue, isValid),
      ),
    );
    return isValid;
  }

  String _computeTotalReturn(num inputValue, bool isValid) {
    if (!isValid) return '-';
    double returnValue = (inputValue * state.netYield) / 100;
    int totalReturnValue = (returnValue + inputValue).toInt();
    return '$totalReturnValue';
  }
}
