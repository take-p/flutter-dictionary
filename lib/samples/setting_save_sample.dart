import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingSaveSample extends StatefulWidget {
  const SettingSaveSample({Key? key}) : super(key: key);

  @override
  _SettingSaveSampleState createState() => _SettingSaveSampleState();
}

class _SettingSaveSampleState extends State<SettingSaveSample> {
  var counterController = TextEditingController();
  int counter = 1;
  int? savedCounter;
  var nameController = TextEditingController();
  String name = "";
  String? savedName;
  var isSelectedController = TextEditingController();
  bool isSelected = false;
  bool? savedIsSelected;

  @override
  void initState() {
    _initSetting();
  }

  void _initSetting() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      savedName = prefs.getString("name") ?? "";
      savedCounter = prefs.getInt("counter") ?? 0;
      savedIsSelected = prefs.getBool("isSelected") ?? false;
    });
  }

  void _loadSetting() async {
    debugPrint("loadSetting");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs.getString("name") ?? "";
      counterController.text = prefs.getInt("counter")?.toString() ?? "";
      name = prefs.getString("name") ?? "";
      counter = prefs.getInt("counter") ?? 0;
      isSelected = prefs.getBool("isSelected") ?? false;
    });
  }

  void _saveSetting() async {
    setState(() {
      savedName = name;
      savedCounter = counter;
      savedIsSelected = isSelected;
    });
    debugPrint("saveSetting");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", name);
    await prefs.setInt("counter", counter);
    await prefs.setBool("isSelected", isSelected);
  }

  void _deleteSetting() async {
    setState(() {
      savedName = null;
      savedCounter = null;
      savedIsSelected = null;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //await prefs.remove("counter");
    //await prefs.remove("name");
    //await prefs.remove("isSelected");
    await prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("??????????????????", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(hintText: "????????????????????????????????????"),
            onChanged: (input) {
              setState(() {
                name = input;
              });
            },
          ),
          TextField(
            controller: counterController,
            decoration: const InputDecoration(hintText: "?????????????????????????????????"),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (input) {
              setState(() {
                counter = int.parse(input);
              });
            },
          ),
          Row(
            children: [
              Checkbox(
                value: isSelected,
                onChanged: (check) {
                  setState(() {
                    isSelected = check!;
                  });
                },
              ),
              const Text("????????????????????????")
            ],
          ),
          const Text("?????????????????????", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Row(
            children: [
              const Text("????????????????????????: "),
              Text(savedName ?? ""),
            ],
          ),
          Row(
            children: [
              const Text("????????????????????????: "),
              Text(savedCounter?.toString() ?? ""),
            ],
          ),
          Row(
            children: [
              const Text("????????????????????????: "),
              Text(savedIsSelected?.toString() ?? ""),
            ],
          ),
          const Text("??????", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ElevatedButton(onPressed: _saveSetting, child: const Text("???????????????")),
          ElevatedButton(
            onPressed: () {
              setState(() {
                nameController.clear();
                counterController.clear();
                isSelected = false;
              });
            },
            child: const Text("???????????????????????????"),
          ),
          ElevatedButton(onPressed: _loadSetting, child: const Text("?????????????????????????????????????????????????????????")),
          ElevatedButton(onPressed: _deleteSetting, child: const Text("???????????????")),

        ],),
    );
  }
}
