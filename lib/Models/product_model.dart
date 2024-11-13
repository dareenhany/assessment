class Products_Model
{
  List<dynamic>products;

  Products_Model({required this.products});
  
  factory Products_Model.fromjson(Map<String , dynamic>json)
  {
    List<dynamic>allData = json["products"].map
    (
        (data)
        {
          return
          {
            "images": "image",
            "names": "name",
            "prices": "price",
          };
        }
    );
    return Products_Model(products: allData);
  }
}