class Details_Model
{
  List<dynamic>products;

  Details_Model({required this.products});

  factory Details_Model.fromjson(Map<String , dynamic>json)
  {
    List<dynamic>allData = json["products"].map
     (
        (data)
        {
          return
          {
              "Image" : "image",
              "Name": "name",
              "Description": "description",
          };
        }
    ).tolist();
    return Details_Model(products: allData);
  }
}