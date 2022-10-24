import '../../domain/entities/promo_supply_entity.dart';

abstract class PromoSupplyDatasource {
  Future<PromoSupplyEntity?> getSuppliers();
}
