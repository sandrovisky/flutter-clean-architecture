import 'package:app/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SalvarCarroFavoritoRepository {
  Either<Exception, bool> call(CarroEntity carroEntity);
}
