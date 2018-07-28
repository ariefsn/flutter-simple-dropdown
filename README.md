# Simple Dropdown

Simple Dropdown Widget for Flutter Apps.

## Getting Started
1. [Import It](#1-import-it)
2. [Use It](#2-use-it)
3. [Props](#3-properties)

### 1. Import it

```
import 'package:simple_dropdown/components/simple_dropdown.dart';
```

### 2. Use it
> Create list that you want to with key "value" for value and "display" for text display.
```
  List items  = [
    {"value": "A", "display": "Ayik"},
    {"value": "B", "display": "Bobo"},
    {"value": "C", "display": "Chacha"},
    {"value": "D", "display": "Damen"},
    {"value": "E", "display": "Euy"},
  ];
```
> Create callback to get the value.
```
  callbackGetDropdown(List val){
    print(val);
  }
```
> Call the dropdown.
```
new SimpleDropdown(
        items: items,
        hint: "Simple Dropdown",
        callbackGetValue: (val){
        callbackGetDropdown(val);
        },
    ),
```

### 3. Properties
| Props             | Type         | Default     | Required |
| -------------     |------------- | ----------- | -------- |
| arrowSize         | Double       | -           | No       |
| callbackGetValue  | Function     | -           | Yes      |
| hint              | String       | -           | No       |
| hintStyle         | TextStyle    | -           | No       |
| items             | List         | -           | Yes      |
| isDense           | Bool         | False       | No       |
| textStyle         | TextStyle    | -           | No       |

1. arrowSize
    Set the size of arrow icon at the end of widget.
2. callbackGetValue
    Callback function for catch value from selected dropdown.
3. hint
    Set text for hint of dropdown.
4. hintStyle
    Styling hint of dropdown.
5. items
    List of dropdown item. Set with key "value" for value, and key "display" for display.
6. isDense
    Set dropdown to dense or not.
7. textStyle
    Styling text of dropdown items.

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).