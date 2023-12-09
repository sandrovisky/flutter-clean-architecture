import 'package:app/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:app/layers/domain/entities/carro_entity.dart';
import 'package:app/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:app/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:app/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase _useCase =
        SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    CarroEntity carro = CarroEntity(placa: 'placa', qtdPortas: 1, valor: 1);

    var result = _useCase(carro);
    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, true);
  });
  test('Espero que nao salve o carro quando o valor for menor ou igual a zero',
      () {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    CarroEntity carro = CarroEntity(placa: 'placa', qtdPortas: 1, valor: 0);

    var result = useCase(carro);
    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, false);
  });
}
