import '../domain/erros/promo_supply_erros.dart';
import '../infra/datasources/promo_supply_datasource.dart';
import '../infra/models/promo_supply_Model.dart';

class PromoSupplyDatasourceImpl implements PromoSupplyDatasource {
  @override
  Future<PromoSupplyModel?> getSuppliers() async {
    var response = true; //await baseRepository.get(url, '');

    if (response == true) {
      var response = mock;
      return PromoSupplyModel.fromMap(response);
    }

    throw PromoSupplyError(message: '');
  }

  var mock = {
    "taskId": "000001",
    "deadLine": "12/12/12",
    "suppliers": [
      {
        "name": "N&D",
        "status": "Concluído",
        "amount": 6,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Royal Canin",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Purina",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Pedigree",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Teste",
        "status": "Pendente",
        "amount": 8,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "N&D",
        "status": "Pendente",
        "amount": 6,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Royal Canin",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Purina",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Pedigree",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Teste",
        "status": "Pendente",
        "amount": 8,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "N&D",
        "status": "Pendente",
        "amount": 6,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Royal Canin",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Purina",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Pedigree",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Teste",
        "status": "Pendente",
        "amount": 8,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "N&D",
        "status": "Pendente",
        "amount": 6,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Royal Canin",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Purina",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Pedigree",
        "status": "Pendente",
        "amount": 10,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
      {
        "name": "Teste",
        "status": "Pendente",
        "amount": 8,
        "promotions": {
          "actual": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ],
          "closed": [
            {
              "name": "daniel",
              "progress": "1/8",
              "status": "Pendente",
              "period": "1/1/1"
            }
          ]
        }
      },
    ]
  };
}
