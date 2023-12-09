import 'package:app/layers/domain/entities/carro_entity.dart';
import 'package:app/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:app/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Either<Exception, bool> call(CarroEntity carroEntity) {
    return _salvarCarroFavoritoRepository(carroEntity);
  }
}
