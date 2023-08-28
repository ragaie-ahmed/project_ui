import 'package:flutter/foundation.dart';

abstract class layoutstate{}
class initlayoutstate extends layoutstate{}
class loadinglayoutstate extends layoutstate{}
class successlayoutstate extends layoutstate{
  String? api_service;
  successlayoutstate({@required this.api_service});
}
class failedlayoutstate extends layoutstate{
  String error;
  failedlayoutstate({required this.error});
}