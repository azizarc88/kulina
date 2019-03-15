import 'package:flutter/material.dart';

class DataCategory
{
  String _icon, _name;
  int _id;
  Color _color;

  DataCategory(this._id, this._icon, this._name, this._color);

  get color
  => _color;

  set color(value)
  {
    _color = value;
  }

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