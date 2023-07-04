import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Detail2Page extends StatelessWidget {
  const Detail2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text("Detail2"),
        ),
        body: Column(
          children: [
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
                  return context.goNamed("detail1");
                },
                child: const Text("Go back Detail1 page"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  return context.goNamed("detail3");
                },
                child: const Text("Go to Detail3 page"),
              ),
            )
          ],
        ));
  }
}
