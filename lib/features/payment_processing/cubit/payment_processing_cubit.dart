import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_processing_state.dart';
part 'payment_processing_cubit.freezed.dart';

class PaymentProcessingCubit extends Cubit<PaymentProcessingState> {
  PaymentProcessingCubit() : super(const PaymentProcessingState.intial());

  Future<bool> startProcessing() async {
    await _delay(600);
    emit(const PaymentProcessingState.paymentStarted());

    await _delay(800);
    emit(const PaymentProcessingState.paymentFinished());

    await _delay(1000);
    emit(const PaymentProcessingState.contractGenerationInProgress());

    await _delay(500);
    emit(const PaymentProcessingState.contractGenerated());

    await _delay(1000);

    return true;
  }

  Future<bool> contractSign() async {
    emit(const PaymentProcessingState.contractSigned());

    await _delay(3000);

    return true;
  }

  Future<void> _delay([int milliseconds = 500]) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
  }
}
