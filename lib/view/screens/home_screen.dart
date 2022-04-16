import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Covid19 Monitoring"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: <Widget>[
            // _buildLAstUpdateItem(),
            GlobalCaseWidget(),
            // _buildSelectedCountryCaseWidget(),
          ],
        ),
      ),
    );
  }
}
