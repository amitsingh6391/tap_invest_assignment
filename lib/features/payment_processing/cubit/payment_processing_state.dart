part of 'payment_processing_cubit.dart';

typedef PaymentProcessingInitialState = _Initial;

@freezed
class PaymentProcessingState with _$PaymentProcessingState {
  const factory PaymentProcessingState.intial() = _Initial;
  const factory PaymentProcessingState.paymentStarted() = _PaymentStarted;
  const factory PaymentProcessingState.paymentFinished() = _PaymentFinished;
  const factory PaymentProcessingState.contractGenerationInProgress() =
      _ContractGenerationInProgress;
  const factory PaymentProcessingState.contractGenerated() = _ContractGenerated;
  const factory PaymentProcessingState.contractSigned() = _ContractSigned;
}
