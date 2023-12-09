import 'package:app/layers/data/datasource/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:app/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:app/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:app/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:app/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:app/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  CarroController controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
