import 'package:flutter/material.dart';

abstract class Detail1Event {
  final dynamic? payload;
  String? oldAddress;
  Detail1Event({this.payload});
}

class FontSizeEvent extends Detail1Event {
  final BuildContext context;
  FontSizeEvent({required this.context});
}

class BoldEvent extends Detail1Event {}

class ItalicEvent extends Detail1Event {}

class SetAddressEvent extends Detail1Event {}

class InitData extends Detail1Event {
  final String address;
  InitData({required this.address});
}
