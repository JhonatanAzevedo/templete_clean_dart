import 'promo_task_entity.dart';

class PromotionEntity {
  final List<PromoTaskEntity> actual;
  final List<PromoTaskEntity> closed;

  PromotionEntity({
    required this.actual,
    required this.closed,
  });
}
