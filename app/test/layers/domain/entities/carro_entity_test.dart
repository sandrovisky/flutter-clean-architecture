import 'package:app/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);

    expect(carroEntity, isNotNull);
  });
  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);

    expect(carroEntity, isNotNull);
  });
  test('Espero que o valorReal seja 2000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);

    var resultadoEsperado = 2000;

    expect(carroEntity.valorReal, resultadoEsperado);
  });
  test('Espero que o valorReal seja zero', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 0, valor: 1000);

    var resultadoEsperado = 0;

    expect(carroEntity.valorReal, resultadoEsperado);
  });
  test('Espero que o valor seja 30000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 0, valor: 15000);

    carroEntity.setCalcularValorDoCarro();

    var resultadoEsperado = 30000;

    expect(carroEntity.valor, resultadoEsperado);
  });
}
