import '../../domain/entities/promotion_entity.dart';
import '../../domain/entities/supply_entity.dart';
import 'promo_actual_closed_model.dart';

class SupplyModel extends SupplyEntity {
  SupplyModel({
    required String name,
    required String status,
    required int amount,
    required PromotionEntity promotions,
  }) : super(
          name: name,
          status: status,
          amount: amount,
          promotions: promotions,
        );

  factory SupplyModel.fromMap(Map<String, dynamic> map) {
    return SupplyModel(
      name: map['name'] as String,
      status: map['status'] as String,
      amount: map['amount'] as int,
      promotions: PromoActualClosedModel.fromMap(
          map['promotions'] as Map<String, dynamic>),
    );
  }
}
