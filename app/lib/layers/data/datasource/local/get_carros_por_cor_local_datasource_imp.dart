import 'package:app/layers/data/datasource/get_carros_por_cor_datasource.dart';
import 'package:app/layers/data/dto/carro_dto.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  final carroVermelho = {
    'placa': 'ABC123',
    'quantidadeDePortas': 4,
    'valorFinal': 5000.0,
  };

  final carroAny = {
    'placa': 'QWE',
    'quantidadeDePortas': 2,
    'valorFinal': 2000.0,
  };

  @override
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(carroVermelho));
      }
      return Right(CarroDto.fromMap(carroAny));
    } catch (e) {
      return Left(Exception('Error in datasource'));
    }
  }
}
