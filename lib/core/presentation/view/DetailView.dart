import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  final String email;
  DetailView({required this.email});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("this is the second page with email ${widget.email}")),
      ),
    );
  }
}
