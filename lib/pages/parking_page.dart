import 'package:flutter/material.dart';

class ParkingPage extends StatelessWidget {
  const ParkingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.red,
              child: SafeArea(
                child: Column(
                  children: [
                    Row(),
                    Text("Titlte"),
                    Row(),
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
