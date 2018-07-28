import 'package:flutter/material.dart';

class SimpleDropdown extends StatefulWidget {
  SimpleDropdown({
    this.arrowSize,
    @required this.callbackGetValue,
    this.hint,
    this.hintStyle,
    @required this.items,
    this.isDense = false,
    this.textStyle,
  });

  final double arrowSize;
  final Function callbackGetValue;
  final String hint;
  final TextStyle hintStyle;
  final List items;
  final bool isDense;
  final TextStyle textStyle;

  @override
  SimpleDropdownState createState() {
    return new SimpleDropdownState();
  }
}

class SimpleDropdownState extends State<SimpleDropdown> {
  DropDownElement _element;
  List<DropDownElement> _elements = <DropDownElement>[];

  getElement(List elementMap) {
    List<DropDownElement> res = new List<DropDownElement>();
    for (var i = 0; i < elementMap.length; i++) {
      var x = DropDownElement(elementMap[i]['value'], elementMap[i]['display']);
      res.add(x);
    }
    setState(() {
      _elements = res;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getElement(widget.items);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return new DropdownButton<DropDownElement>(
      style: widget.textStyle,
      hint: new Text(widget.hint != null ? widget.hint : _elements[0].display, style: widget.hintStyle,),
      value: _element,
      iconSize: widget.arrowSize,
      isDense: widget.isDense,
      onChanged: (DropDownElement newElement) {
        List _send = [{"value": newElement.value, "display": newElement.display}];
        widget.callbackGetValue(_send);
        setState(() {
          _element = newElement;
        });
      },
      items: _elements.map((DropDownElement element) {
        return new DropdownMenuItem<DropDownElement>(
          value: element,
          child: new Text(
            element.display,
            style: new TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
    );
  }
}

class DropDownElement {
  const DropDownElement(this.value, this.display);

  final String value;
  final String display;
}