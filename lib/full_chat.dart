import 'package:flutter/material.dart';

class FullChat extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? leadingWidget;
  final Widget? trailingWidget;
  final TextEditingController inputController;
  final InputDecoration? inputDecoration;
  const FullChat(
      {super.key,
      this.appBar,
      this.leadingWidget,
      required this.inputController,
      this.inputDecoration,
      this.trailingWidget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.white,
            )),
            Container(
              color: Colors.grey[900],
              padding: const EdgeInsets.only(top: 5, bottom: 40),
              height: 90,
              width: double.infinity,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 5,
                width: 50,
                child: Row(
                  children: [
                    SizedBox(width: 40, height: 40, child: leadingWidget),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 3, bottom: 3, left: 5, right: 5),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color.fromARGB(255, 83, 83, 83))),
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: inputController,
                          decoration: inputDecoration ??
                              const InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(bottom: 13, top: 0),
                                border: InputBorder.none,
                              ),
                        ),
                      ),
                    ),
                    trailingWidget ?? Container(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
