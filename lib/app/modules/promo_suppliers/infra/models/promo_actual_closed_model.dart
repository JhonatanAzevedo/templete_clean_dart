import '../../domain/entities/promo_task_entity.dart';
import '../../domain/entities/promotion_entity.dart';
import 'promo_task_model.dart';

class PromoActualClosedModel extends PromotionEntity {
  PromoActualClosedModel({
    required List<PromoTaskEntity> actual,
    required List<PromoTaskEntity> closed,
  }) : super(
          actual: actual,
          closed: closed,
        );

  factory PromoActualClosedModel.fromMap(Map<String, dynamic> map) {
    return PromoActualClosedModel(
      actual: List<PromoTaskEntity>.from(
        (map['actual']).map<PromoTaskEntity>(
          (x) => PromoTaskModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      closed: List<PromoTaskEntity>.from(
        (map['closed']).map<PromoTaskEntity>(
          (x) => PromoTaskModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
