import 'package:bloc_goroute/detail1/detail1_bloc.dart';
import 'package:bloc_goroute/detail1/detail1_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'detail1_event.dart';

class Detail1Page extends StatelessWidget {
  Detail1Page({super.key});
  double size = 10;
  bool isBold = false;
  bool isItalic = false;
  String address = "Nam Định";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          Detail1Bloc()..add(InitData(address: address)),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BlocListener<Detail1Bloc, Detail1State>(listener: (context, state) {
      if (state.sliderFontSize.isFinite) {
        size = state.sliderFontSize;
      }
      if (state.isBold) {
        isBold = state.isBold;
      }
      if (state.isItalic) {
        isItalic = state.isItalic;
      }
      if (state.address.isNotEmpty) {
        address = state.address;
      }
    }, child: BlocBuilder<Detail1Bloc, Detail1State>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: const Text("Detail1"),
          ),
          body: Column(
            children: [
              const Text("Kenken"),
              Text(
                state.address,
                style: TextStyle(
                    fontSize: size,
                    fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
                    fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.red)),
                child: Column(children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<Detail1Bloc>().add(SetAddressEvent());
                      },
                      child: const Text("Đổi địa chỉ"),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<Detail1Bloc>().add(SetAddressEvent());
                      },
                      child: const Text("Đổi Bold"),
                    ),
                  ),
                ]),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    return context.go("/");
                  },
                  child: const Text("Go to home page"),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    return context.goNamed("detail2");
                  },
                  child: const Text("Go to Detail2 page"),
                ),
              )
            ],
          ),
        );
      },
    ));
  }
}
