class DataInformation
{
  String _image, _link;
  int _id;

  DataInformation(this._id, this._link, this._image);

  int get id
  => _id;

  set id(int value)
  {
    _id = value;
  }

  get link
  => _link;

  set link(value)
  {
    _link = value;
  }

  String get image
  => _image;

  set image(String value)
  {
    _image = value;
  }


}