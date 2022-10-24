import '../../domain/entities/promo_task_entity.dart';

class PromoTaskModel extends PromoTaskEntity {
  PromoTaskModel({
    required String name,
    required String progress,
    required String status,
    required String period,
  }) : super(
          name: name,
          progress: progress,
          status: status,
          period: period,
        );

  factory PromoTaskModel.fromMap(Map<String, dynamic> map) {
    return PromoTaskModel(
      name: map['name'] as String,
      progress: map['progress'] as String,
      status: map['status'] as String,
      period: map['period'] as String,
    );
  }
}
