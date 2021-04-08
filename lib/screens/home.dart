import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas;
  String _mensagem;

  @override
  void initState() {
    super.initState();
    _pessoas = 0;
    _mensagem = "Pode entrar!";
  }

  void atualizarPessoas(int num) {
    setState(() {
      _pessoas += num;

      if (_pessoas < 0) {
        _mensagem = "Mundo invertido?";
      } else if (_pessoas < 12) {
        _mensagem = "Pode entrar!";
      } else {
        _mensagem = "Lotado!";
      }
    });
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_pessoas < 0) {
      _mensagem = "Mundo invertido?";
    } else if (_pessoas <= 10) {
      _mensagem = "Pode entrar!";
    } else {
      _mensagem = "Lotado!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            "images/patrick-tomasso-restaurant.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pessoas: $_pessoas",
                style: Theme.of(context).textTheme.headline1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    child: TextButton(
                      onPressed: () {
                        atualizarPessoas(1);
                      },
                      child: Text(
                        "+1",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    child: TextButton(
                      onPressed: () {
                        atualizarPessoas(-1);
                      },
                      child: Text(
                        "-1",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                _mensagem,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                    fontStyle: _mensagem.contains("Mundo invertido?")
                        ? FontStyle.italic
                        : FontStyle.normal),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
