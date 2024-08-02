import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({
    super.key,
  });

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 10),
          child: TextFormField(
            onChanged: (value) {
              print(value);
              text = value;
              setState(() {});
            },
            decoration: InputDecoration(
                hintText: "Search doctor or health issue",
                prefixIcon: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SvgPicture.asset("assets/svg/search-normal.svg"),
                ),
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF8696BB),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Your text is: $text"),
        )
      ],
    );
  }
}
