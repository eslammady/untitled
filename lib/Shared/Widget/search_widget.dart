import 'package:flutter/material.dart';

class Search_widget extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  const Search_widget(this.controller, {super.key, this.onChanged});

  @override
  State<Search_widget> createState() => _Search_widgetState();
}

class _Search_widgetState extends State<Search_widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextFormField(
        minLines: 1,
        maxLines: 2,
        controller: widget.controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            // hintText: 'بحث',
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 5),
            label: Text(
              'بحث',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                width: 1.0,
                color: Colors.green,
              ),
            )),
      ),
    );
  }
}
