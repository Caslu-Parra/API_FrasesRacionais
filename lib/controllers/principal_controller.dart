import 'package:flutter/material.dart';
import '../models/frase_model.dart';
import 'package:frase_do_dia/models/frase_model.dart';


class RacionaisController {
  var autor = "";
  var frase = TextEditingController();

  // Método de que busca as informaçõess no model.
  Future<void> buscar() async {
   // Instanciar um obj do tipo resereço:
    var res = Racionais();

    // Chamando o método do model:
    res = await Racionais.obterDados();

    autor = res.autor;
    frase.text = res.frase;
  }
}
