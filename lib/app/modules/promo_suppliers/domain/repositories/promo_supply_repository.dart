import 'package:dartz/dartz.dart';

import '../entities/promo_supply_entity.dart';
import '../erros/promo_supply_erros.dart';

abstract class PromoSupplyRepository {
  Future<Either<Failure, PromoSupplyEntity?>> getSuppliers();
}
