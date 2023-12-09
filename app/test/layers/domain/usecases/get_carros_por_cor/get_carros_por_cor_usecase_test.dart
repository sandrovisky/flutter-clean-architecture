import 'package:app/layers/data/datasource/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:app/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:app/layers/domain/entities/carro_entity.dart';
import 'package:app/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:app/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:app/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarroPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = useCase('azul');
    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, isInstanceOf<CarroEntity>());
  });
  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarroPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = useCase('vermelho');
    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.qtdPortas, 4);
  });
  test('Deve retornar um carro de 2 portas quando qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarroPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = useCase('verde');
    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.qtdPortas, 2);
  });
}
