import 'package:dartz/dartz.dart';

import '../entities/promo_supply_entity.dart';
import '../erros/promo_supply_erros.dart';
import '../repositories/promo_supply_repository.dart';

abstract class GetPromoSupplyUseCase {
  Future<Either<Failure, PromoSupplyEntity?>> call();
}

class GetPromoSupplyUseCaseImpl implements GetPromoSupplyUseCase {
  final PromoSupplyRepository repository;

  GetPromoSupplyUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, PromoSupplyEntity?>> call() async {
    return await repository.getSuppliers();
  }
}
