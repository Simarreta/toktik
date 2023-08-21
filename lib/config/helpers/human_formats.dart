
import 'package:intl/intl.dart';

class HumanFormats{

  //Esto es para hacer que los digitos salgan en K,M en vez de números largos
  static String humanReadbleNumer(double number){
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: ''
    ).format(number);

    return formatterNumber;

  }

}

