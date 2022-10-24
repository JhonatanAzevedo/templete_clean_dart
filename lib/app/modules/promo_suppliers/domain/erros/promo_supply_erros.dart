class PromoSupplyError extends Failure {
  PromoSupplyError({
    required String message,
  }) : super(message: message);
}

abstract class Failure implements Exception {
  final String message;

  Failure({required this.message});
}
