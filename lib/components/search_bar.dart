import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const SearchBar({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {
  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 70,
      child: Center(
        child: TextField(
          enabled: true,
          controller: inputController,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: "例：グリッドビュー",
            fillColor: Colors.white,
            filled: true,
            border: const OutlineInputBorder(
              //borderSide: BorderSide.none,
              //borderRadius: BorderRadius.all(Radius.circular(10))

            ),
            suffixIcon: inputController.text.isNotEmpty ? InkWell(
              onTap: () {
                inputController.clear();
                widget.onChanged("");
              },
              child: const Icon(Icons.clear, color: Colors.grey,),
            ) : null,
          ),
        ),
      ),
    );
  }
}
