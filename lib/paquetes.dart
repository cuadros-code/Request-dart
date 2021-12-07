import 'package:http/http.dart' as http;

import 'model/countrie_response.dart';

void serviceDataColombia() async {

  final url = Uri.https('restcountries.com', 'v2/name/colombia');

  var response = await http.get(url);

  final dataResponse = responseFromJson(response.body);

  print('País: ${dataResponse[0].name}');
  print('Poblacion: ${dataResponse[0].population}');
  print('Fronteras:');
  dataResponse[0].borders.forEach(print);
  print('Lenguaje ${dataResponse[0].languages[0].nativeName}');
  print('Latitud ${dataResponse[0].latlng[0]}');
  print('Longitud ${dataResponse[0].latlng[1]}');
  print('Moneda ${dataResponse[0].currencies[0].name}');
  print('Bandera ${dataResponse[0].flag}');
  
}