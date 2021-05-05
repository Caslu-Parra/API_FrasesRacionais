/* 
A API abaixo retorna uma frase aleatório sempre que uma nova
consulta GET é realizada.
Link da API: https://api.senac.estevaorada.com/api/frase
*/
import 'dart:convert';
import 'package:http/http.dart';

class Racionais {
  final String autor;
  final String frase;

  // contrutor:
  Racionais({this.frase, this.autor});

  // método de "fabricar" endereços:
  factory Racionais.fromJson(Map json) {
    return Racionais(
      frase: json['frase'],
      autor: json['autor'],
    );
  }

  // Método para buscar Racionaiss:
  static Future<Racionais> obterDados() async {
    var url = Uri.parse("https://api.senac.estevaorada.com/api/frase/");
    // Chamada assíncrona:
    var resposta = await get(url);
    var json = jsonDecode(resposta.body);
    return Racionais.fromJson(json);
  }
}
