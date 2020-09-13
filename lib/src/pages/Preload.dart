import 'package:flutter/material.dart';

class PreloadPage extends StatefulWidget {
  @override
  _PreloadPageState createState() => _PreloadPageState();
}

class _PreloadPageState extends State<PreloadPage> {
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/logo.png',
              width: 400,
            ),
            loading
                ? Container(
                    margin: EdgeInsets.all(30),
                    child: Text(
                      'Carregando informações...',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  )
                : Container(),
            loading
                ? CircularProgressIndicator(
                    strokeWidth: 4,
                  )
                : Container(),
            !loading
                ? Container(
                    margin: EdgeInsets.all(30),
                    child: RaisedButton(
                      child: Text('Tente novamente mais tarde'),
                      onPressed: () {},
                    ))
                : Container(),
          ],
        ),
      ),
    );
  }
}
