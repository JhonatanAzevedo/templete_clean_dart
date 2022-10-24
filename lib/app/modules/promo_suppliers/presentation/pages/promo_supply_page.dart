import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../domain/entities/supply_entity.dart';
import '../controllers/promo_supply_controller.dart';
import '../states/promo_supply_state.dart';

class PromoSupplyPage extends StatefulWidget {
  const PromoSupplyPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PromoSupplyPage> createState() => _PromoSupplyPageState();
}

class _PromoSupplyPageState extends State<PromoSupplyPage> {
  PromoSupplyController controller = Modular.get<PromoSupplyController>();
  @override
  void initState() {
    controller.showPromoSuppliers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Fornecedores'),
      ),
      body: ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, value, child) {
          if (controller.value is PromoSuppliersStateLoading) {
            return const CircularProgressIndicator();
          } else if (controller.value is PromoSuppliersStateLoaded) {
            return loaded(controller.promoSuppliers!.suppliers);
          } else {
            return const Text('erro');
          }
        },
      ),
    );
  }

  Widget loaded(List<SupplyEntity> suppliers) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16.0),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              bottom: 16.0,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    bottom: 32.0,
                  ),
                  child: controller.hasCheckStatus
                      ? Container(
                          padding: const EdgeInsets.only(
                            top: 16.0,
                            bottom: 16.0,
                            right: 16.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 24.0,
                                    width: 4.0,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.0,
                                      right: 12.0,
                                    ),
                                    child: Icon(
                                      Icons.pets,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Faça o checklist das promoções de todos\nos fornecedores antes de finalizar.',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                    ),
                                    maxLines: 4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/vector_task.svg'),
                    const SizedBox(width: 24.0),
                    RichText(
                      text: TextSpan(
                        text: 'Nº da tarefa: ',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: controller.promoSuppliers!.taskId,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/stopwatch.svg',
                      color: const Color(0xFF454545),
                      height: 24.0,
                      width: 24.0,
                    ),
                    const SizedBox(width: 24.0),
                    RichText(
                      text: TextSpan(
                        text: 'Finalizar até: ',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: controller.promoSuppliers!.deadLine,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (_, __) => Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                        ),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                    ),
                    itemCount: suppliers.length,
                    itemBuilder: (_, index) {
                      var item = suppliers[index];
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: item.name,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' (${item.amount})',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                ),
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFCCE5F3),
                                  border: Border.all(
                                      color: const Color(0xFFCCE5F3)),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Center(
                                  child: Text(
                                    item.status,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 32.0),
                              const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Color(0xFF007DC5),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: !controller.hasCheckStatus
                      ? () {
                          Modular.to.pushNamed('');
                        }
                      : null,
                  child: const Text('Finalizar'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}



