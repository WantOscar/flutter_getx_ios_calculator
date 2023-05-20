import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: _result(),
          ),
          Expanded(
            flex: 7,
            child: _buttons(),
          ),
        ],
      ),
    );
  }

  Widget _result() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buttons() {
    return Container(
      color: Colors.green,
    );
  }
}
