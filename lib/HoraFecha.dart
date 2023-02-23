import 'package:flutter/material.dart';

class HoraFecha extends StatefulWidget {
  const HoraFecha({Key? key}) : super(key: key);

  @override
  _HoraFechaState createState() => _HoraFechaState();
}

class _HoraFechaState extends State<HoraFecha> {
  DateTime _dataTime = DateTime.now();

  void _showDataPicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dataTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_dataTime.toString(), style: TextStyle(fontSize: 20)),
            MaterialButton(
              onPressed: _showDataPicker,
              child: const Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('fecha',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
