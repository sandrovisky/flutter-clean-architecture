import 'package:app/layers/domain/entities/carro_entity.dart';
import 'package:app/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:app/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:dartz/dartz.dart';

class GetCarroPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _carrosPorCorRepository;
  GetCarroPorCorUseCaseImp(this._carrosPorCorRepository);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _carrosPorCorRepository(cor);
  }
}
