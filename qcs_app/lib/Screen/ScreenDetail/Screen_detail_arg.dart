import 'package:qcs_app/models/crypto_model.dart';



class ScreenDetailArgument {
  ScreenDetailArgument({required this.crypto});
  Crypto crypto = Crypto(name: 'name', symbol: 'symbol', thumb: 'thumb', price: 0);
}
