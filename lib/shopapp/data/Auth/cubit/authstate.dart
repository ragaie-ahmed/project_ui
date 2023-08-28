abstract class authstate{}
class initstate extends authstate{}
class loadingregisterstate extends authstate{}
class successregisterstate extends authstate{}
class failderegisterstate extends authstate{
  String errormessage;
failderegisterstate({required this.errormessage});  
}
class isobscerue extends authstate{}
class loadingloginstate extends authstate{}
class successloginstate extends authstate{}
class faildeloginstate extends authstate{
  String errormessage;
faildeloginstate({required this.errormessage});  
}
