import 'package:dartz/dartz.dart';

import '../../domain/entities/promo_supply_entity.dart';
import '../../domain/erros/promo_supply_erros.dart';
import '../../domain/repositories/promo_supply_repository.dart';
import '../datasources/promo_supply_datasource.dart';

class PromoSupplyRepositoryImpl implements PromoSupplyRepository {
  final PromoSupplyDatasource _dataSource;

  PromoSupplyRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, PromoSupplyEntity?>> getSuppliers() async {
    try {
      final response = await _dataSource.getSuppliers();
      return Right(response);
    } catch (e) {
      return Left(PromoSupplyError(message: ''));
    }
  }
}
