import 'package:flutter/material.dart';

import '../../domain/entities/promo_supply_entity.dart';
import '../../domain/usecases/get_promo_supply_usecase.dart';
import '../states/promo_supply_state.dart';

class PromoSupplyController extends ValueNotifier<PromoSuppliersState> {
  final GetPromoSupplyUseCase _usecase;
  //final UserStore _userStore;

  PromoSupplyController(
    this._usecase,
    // this._userStore,
  ) : super(PromoSuppliersStateLoading());

  PromoSupplyEntity? promoSuppliers;

  Future<void> showPromoSuppliers() async {
    value = PromoSuppliersStateLoading();
    var response =
        await _usecase(/* subsidiaryId: _userStore.currentSubsidiary!.id */);
    value = response.fold(
      (l) => PromoSuppliersStateError(),
      (success) {
        promoSuppliers = success!;
        return PromoSuppliersStateLoaded(success);
      },
    );
  }

  bool get hasCheckStatus => promoSuppliers!.suppliers.fold<bool>(
        false,
        (accumulator, currentValue) =>
            currentValue.status.contains('Pendente') ||
            currentValue.status.contains('Em andamento'),
      );
}
