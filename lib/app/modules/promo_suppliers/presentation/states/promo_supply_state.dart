import '../../domain/entities/promo_supply_entity.dart';

abstract class PromoSuppliersState {}

class PromoSuppliersStateLoading extends PromoSuppliersState {}

class PromoSuppliersStateLoaded extends PromoSuppliersState {
  final PromoSupplyEntity suppliers;

  PromoSuppliersStateLoaded(this.suppliers);
}

class PromoSuppliersStateError extends PromoSuppliersState {}
