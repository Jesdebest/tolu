// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class isloading extends StatefulWidget {
  const isloading({
    Key? key,
    required this.title,
    required this.onpressed,
  }) : super(key: key);
  final String title;
  final Future<void> Function() onpressed;
  @override
  State<isloading> createState() => _isloadingState();
}

class _isloadingState extends State<isloading> {
  bool _isloading = false;

  void changeloading() {
    setState(() {
      _isloading = !_isloading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: () async {
      if (_isloading) return

      changeloading();
      await widget.onpressed.call();
      changeloading();

    }, child: _isloading ? CircularProgressIndicator() : Text(widget.title));
  }
}