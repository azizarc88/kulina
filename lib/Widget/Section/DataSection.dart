class DataSection
{
  String _icon, _name;
  int _id;

  DataSection(this._id, this._icon, this._name);

  int get id
  => _id;

  set id(int value)
  {
    _id = value;
  }

  String get icon
  => _icon;

  set icon(String value)
  {
    _icon = value;
  }

  get name
  => _name;

  set name(value)
  {
    _name = value;
  }
}