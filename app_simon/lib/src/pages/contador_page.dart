import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  String _text = '0';
  String _text1 = 'Nùmero de Taps';
  final style = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Text('SimonApp'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_text1, style: style),
          Text(
            _text,
            style: style,
          ),
        ],
      )),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            backgroundColor: Colors.pink[200],
            child: Icon(Icons.exposure_zero),
            onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            backgroundColor: Colors.pink[200],
            child: Icon(Icons.remove),
            onPressed: _programingBoring),
        SizedBox(width: 5.0),
        FloatingActionButton(
            backgroundColor: Colors.pink[200],
            child: Icon(Icons.add),
            onPressed: _puto),
      ],
    );
  }

  void _reset() {
    setState(() => _text = '0');
    setState(() => _text1 = 'Nùmero de Taps');
  }

  void _puto() {
    setState(() => _text = 'Puto El Que Lo Lea');
    setState(() => _text1 = ' Perdón');
  }

  void _programingBoring() {
    setState(() =>
        _text = 'Lo siento Estoy Aburrido son \n    las 2 am y tengo sueño');
    setState(() => _text1 = 'Puto');
  }
}
