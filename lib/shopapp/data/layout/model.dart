class layoutmodel {

   dynamic? price,oldprice;
   String ?image;
   String? description;

 layoutmodel.fromjson({required Map<String,dynamic> json}){
// price=json["price"];
image=json["image"];
oldprice=json["old_price"];
description=json["description"];
 }
}
