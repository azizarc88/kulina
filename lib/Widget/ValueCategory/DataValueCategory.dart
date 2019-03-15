import 'package:flutter/material.dart';

class DataValueCategory
{
  String _icon, _name, _desc;
  int _id;

  DataValueCategory(this._id, this._name, this._desc, this._icon);

  int get id
  => _id;

  set id(int value)
  {
    _id = value;
  }

  get desc
  => _desc;

  set desc(value)
  {
    _desc = value;
  }

  get name
  => _name;

  set name(value)
  {
    _name = value;
  }

  String get icon
  => _icon;

  set icon(String value)
  {
    _icon = value;
  }


}