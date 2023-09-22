import 'package:flutter/material.dart';

import 'counter_item.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _redScore = 0;
  int _blueScore = 0;
  int _greenScore = 0;
  int _purpleScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3F3F3F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF212121),
        title: const Text('Score keeper'),
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: 0,
                child: Text('Reset'),
              ),
              const PopupMenuItem(
                value: 0,
                child: Text('Перезагрузить'),
              ),
            ],
            onSelected: (value) {
              if (value == 0) {
                setState(() {
                  _redScore = 0;
                  _blueScore = 0;
                  _greenScore = 0;
                  _purpleScore = 0;
                });
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Expanded(
                child: CounterItem(
                  count: _redScore,
                  onAdd: () {
                    setState(() {
                      _redScore++;
                    });
                  },
                  onSubtract: () {
                    if (_redScore <= 0) {
                      return;
                    }
                    setState(() {
                      _redScore--;
                    });
                  },
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: CounterItem(
                count: _blueScore,
                  onAdd: (){
                    setState(() {
                      _blueScore++;
                    });
                  },
                  onSubtract: (){
                 if (_blueScore <= 0) {
                return;
                 }
                setState(() {
                  _blueScore--;
                 });
                },
                color: Colors.blue,

                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CounterItem(
                  count: _greenScore,
                  onAdd: () {
                    setState(() {
                      _greenScore++;
                    });
                  },
                  onSubtract: () {
                    if (_greenScore <= 0) {
                      return;
                    }
                    setState(() {
                      _greenScore--;
                    });
                  },
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: CounterItem(
                  count: _purpleScore,
                  onAdd: () {
                    setState(() {
                      _purpleScore++;
                    });
                  },
                  onSubtract: () {
                      if (_purpleScore <= 0) {
                 return;
                  }
                  setState(() {
                 _purpleScore--;
                   });
                 },

                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
