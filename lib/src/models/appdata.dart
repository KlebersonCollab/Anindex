import 'package:flutter/material.dart';

class AppData with ChangeNotifier {
  var data = [
    {
      "name": "Nanatsu no Taizai",
      "season": [
        {
          "Season1": [
            {"Episódio1": "EPS1"}
          ]
        }
      ]
    },
    {
      "name": "Saint Seiya",
      "season": [
        {
          "Season1": [
            {"Episódio1": "EPS1"}
          ]
        }
      ]
    }
  ];
  void setData(newData) {
    data = newData;
    notifyListeners();
  }
}
