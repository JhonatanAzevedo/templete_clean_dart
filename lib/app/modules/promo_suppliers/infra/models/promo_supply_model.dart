import '../../domain/entities/promo_supply_entity.dart';
import '../../domain/entities/supply_entity.dart';
import 'supply_model.dart';

class PromoSupplyModel extends PromoSupplyEntity {
  PromoSupplyModel({
    required String taskId,
    required String deadLine,
    required List<SupplyEntity> suppliers,
  }) : super(
          taskId: taskId,
          deadLine: deadLine,
          suppliers: suppliers,
        );

  factory PromoSupplyModel.fromMap(Map<String, dynamic> map) {
    return PromoSupplyModel(
      taskId: map['taskId'] as String,
      deadLine: map['deadLine'] as String,
      suppliers: List<SupplyEntity>.from(
        (map['suppliers'] as List<Object>).map<SupplyEntity>(
          (x) => SupplyModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
