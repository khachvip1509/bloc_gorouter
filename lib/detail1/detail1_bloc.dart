import 'dart:math';

import 'package:bloc_goroute/detail1/detail1_event.dart';
import 'package:bloc_goroute/detail1/detail1_state.dart';
import 'package:bloc/bloc.dart';

class Detail1Bloc extends Bloc<Detail1Event, Detail1State> {
  Detail1Bloc() : super(Detail1State(address: "")) {
    on<FontSizeEvent>(_onFontSize);
    on<BoldEvent>(_onBold);
    on<ItalicEvent>(_onItalic);
    on<SetAddressEvent>(_onSetAddress);
    on<InitData>(_onInitData);
  }
  Future<void> _onInitData(InitData event, Emitter<Detail1State> emit) async {
    emit(state.copyWith(address: event.address));
  }

  Future<void> _onFontSize(
      FontSizeEvent event, Emitter<Detail1State> emit) async {
    emit(state.copyWith(sliderFontSize: 1));
  }

  Future<void> _onBold(BoldEvent event, Emitter<Detail1State> emit) async {
    emit(state.copyWith(isBold: true));
  }

  Future<void> _onItalic(ItalicEvent event, Emitter<Detail1State> emit) async {
    emit(state.copyWith(isItalic: true));
  }

  Future<void> _onSetAddress(
      SetAddressEvent event, Emitter<Detail1State> emit) async {
    event.oldAddress = "Đà Nẵng";
    emit(state.copyWith(address: event.oldAddress));
  }
}
