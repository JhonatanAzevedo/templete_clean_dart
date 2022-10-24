
import 'supply_entity.dart';

class PromoSupplyEntity {
  final String taskId;
  final String deadLine;
  final List<SupplyEntity> suppliers;

  PromoSupplyEntity({
    required this.taskId,
    required this.deadLine,
    required this.suppliers,
  });


}
