class Login_Model
{
  Map<String , dynamic> datalogin;
  bool status;

  Login_Model({required this.datalogin , required this.status});

  factory Login_Model.fromjson(Map<String , dynamic>json)
  {
    return Login_Model(datalogin: json["data"] , status: json["status"]);
  }
}