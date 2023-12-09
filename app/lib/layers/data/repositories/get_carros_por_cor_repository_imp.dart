import 'package:app/layers/data/datasource/get_carros_por_cor_datasource.dart';
import 'package:app/layers/data/dto/carro_dto.dart';
import 'package:app/layers/domain/entities/carro_entity.dart';
import 'package:app/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _carrosPorCorDataSource;
  GetCarrosPorCorRepositoryImp(this._carrosPorCorDataSource);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _carrosPorCorDataSource(cor);
  }
}
