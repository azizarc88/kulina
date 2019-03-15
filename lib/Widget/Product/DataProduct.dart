class DataProduct
{
  int _id;
  String _name, _image, _titleimage;
  int _price;

  DataProduct(this._id, this._name, this._image, this._titleimage, this._price);

  int get price
  => _price;

  set price(int value)
  {
    _price = value;
  }

  get titleimage
  => _titleimage;

  set titleimage(value)
  {
    _titleimage = value;
  }

  get image
  => _image;

  set image(value)
  {
    _image = value;
  }

  String get name
  => _name;

  set name(String value)
  {
    _name = value;
  }

  int get id
  => _id;

  set id(int value)
  {
    _id = value;
  }


}