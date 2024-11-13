class Registration_Model
{
   Map<String , dynamic>data;

   Registration_Model({required this.data});

   factory Registration_Model.fromjson(Map<String , dynamic>json)
   {
      return Registration_Model(data: json["data"]);
   }
}