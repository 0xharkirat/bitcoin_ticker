import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '169D1432-0824-4C7B-9953-33BAE1C08E5E';
const baseUri = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apiKey=169D1432-0824-4C7B-9953-33BAE1C08E5E';

class CoinData {



  Future getCoinData() async {
    http.Response response = await http.get(Uri.parse(baseUri));
    if (response.statusCode == 200){
      String data = response.body;

      var decodedData = jsonDecode(data);

      var lastPrice = decodedData['rate'];

      return lastPrice;
    }
    else{
      print(response.statusCode);
    }
  }









}
