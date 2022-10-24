import 'promotion_entity.dart';

class SupplyEntity {
  final String name;
  final String status;
  final int amount;
  final PromotionEntity promotions;

  SupplyEntity({
    required this.name,
    required this.status,
    required this.amount,
    required this.promotions,
  });
}
