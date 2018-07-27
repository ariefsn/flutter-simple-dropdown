import 'package:flutter/material.dart';

class SimpleDropdown extends StatefulWidget {
  SimpleDropdown({
    this.callbackGetValue,
    this.hint,
    @required this.items,
  });

  final Function callbackGetValue;
  final String hint;
  final List items;

  @override
  SimpleDropdownState createState() {
    return new SimpleDropdownState();
  }
}

class SimpleDropdownState extends State<SimpleDropdown> {
  DropDownElement _element;
  List<DropDownElement> _elements = <DropDownElement>[];
  // List<DropDownElement> _elements = widget.items;

  getType(List elementMap) {
    List<DropDownElement> res = new List<DropDownElement>();
    for (var i = 0; i < elementMap.length; i++) {
      var x = DropDownElement(elementMap[i]['value'], elementMap[i]['display']);
      res.add(x);
    }
    setState(() {
      _element = res[0];
      _elements = res;
    });
    print(_element.display);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getType(widget.items);
    _elements = [
      DropDownElement("A", "Ayik"),
      DropDownElement("B", "Bobo"),
      DropDownElement("C", "Chacha"),
      DropDownElement("D", "Chacha"),
      DropDownElement("E", "Euy"),
      // {"value": "A", "display": "Ayik"},
      // {"value": "B", "display": "Bobo"},
      // {"value": "C", "display": "Chacha"},
      // {"value": "D", "display": "Damen"},
      // {"value": "E", "display": "Euy"},
    ];
  }

  @override
  Widget build(BuildContext context) {
    // return new DropdownButton<DropDownElement>(
    //   value: _element,
    //   items: _elements.map((DropDownElement element) {
    //     return DropdownMenuItem<DropDownElement>(
    //       value: element,
    //       child: new Text("element.display"),
    //     );
    //   }).toList(),
    //   onChanged: (DropDownElement val) {
    //     // widget.callbackGetValue(val);
    //   },
    //   hint: new Text(widget.hint),
    // );
    return new SafeArea(
      child: new Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: (){
              getType(widget.items);
            },
            color: Colors.amber,
            child: new Text("data"),
          ),
          new Text(widget.items.toString()),
          new RaisedButton(
            onPressed: (){
              print(_elements.toString());
              // print(_elements[0].display.toString());
            },
            color: Colors.indigo,
            child: new Text("xxx"),
          ),
        ],
      ),
    );
  }
}

class DropDownElement {
  const DropDownElement(this.value, this.display);

  final String value;
  final String display;
}
