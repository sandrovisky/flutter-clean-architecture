import 'package:app/layers/data/datasource/get_carros_por_cor_datasource.dart';
import 'package:app/layers/data/datasource/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:app/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:app/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(dataSource);

  test(
    'Devolva um carro independente da cor',
    () {
      var result = repository('qualquer');

      expect(result, isNotNull);
    },
  );
}
