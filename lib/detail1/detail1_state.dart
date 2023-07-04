abstract class BaseState {
  final double sliderFontSize;
  final bool isBold;
  final bool isItalic;
  BaseState(
      {required this.sliderFontSize,
      required this.isBold,
      required this.isItalic});
  double get fontSize => sliderFontSize * 30;
}

class Detail1State extends BaseState {
  String address;
  Detail1State(
      {required this.address,
      double sliderFontSize = 30.0,
      bool isBold = false,
      bool isItalic = false})
      : super(
            sliderFontSize: sliderFontSize, isBold: isBold, isItalic: isItalic);
  Detail1State copyWith(
      {String? address, double? sliderFontSize, bool? isBold, bool? isItalic}) {
    return Detail1State(
      sliderFontSize: sliderFontSize ?? this.sliderFontSize,
      isBold: isBold ?? this.isBold,
      isItalic: isItalic ?? this.isItalic,
      address: address ?? this.address,
    );
  }
}
