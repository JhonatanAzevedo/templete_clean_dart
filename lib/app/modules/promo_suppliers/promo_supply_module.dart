import 'package:flutter_modular/flutter_modular.dart';
import 'package:templete_clean_dart/app/modules/promo_suppliers/presentation/controllers/promo_supply_controller.dart';

import 'domain/repositories/promo_supply_repository.dart';
import 'domain/usecases/get_promo_supply_usecase.dart';
import 'external/promo_supply_datasource_impl.dart';
import 'infra/datasources/promo_supply_datasource.dart';
import 'infra/repositores/promo_supply_repository_impl.dart';
import 'presentation/pages/promo_supply_page.dart';

class PromoSupplyModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<PromoSupplyDatasource>(
      (i) => PromoSupplyDatasourceImpl(),
    ),
    Bind<PromoSupplyRepository>(
      (i) => PromoSupplyRepositoryImpl(
        i<PromoSupplyDatasource>(),
      ),
    ),
    Bind<GetPromoSupplyUseCase>(
      (i) => GetPromoSupplyUseCaseImpl(
        i<PromoSupplyRepository>(),
      ),
    ),
    Bind<PromoSupplyController>(
      (i) => PromoSupplyController(
        i<GetPromoSupplyUseCase>(),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      "/",
      child: (_, args) => const PromoSupplyPage(),
    ),
  ];
}
