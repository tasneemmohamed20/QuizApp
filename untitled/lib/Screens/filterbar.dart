import 'package:flutter/material.dart';

class FastFilterBar extends StatefulWidget {
  @override
  _FastFilterBarState createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBar> {
  final List<String> options = [
    'Filter 1',
    'Filter 2',
    'Filter 3',
    'Filter 4',
    'Filter 5',
    'Filter 6',
    'Filter 7',
    'Filter 8',
    'Filter 9',
  ];

  int selectedIndex = -1;
  String selectedItemText = '';
  String getSelectedItemText(int index) {
    switch (index) {
      case -1:
        return '';
      case 0:
        return 'Text 1';
      case 1:
        return 'Text 2';
      case 2:
        return 'Text 3';
      case 3:
        return 'Text 4';
      case 4:
        return 'Text 5';
      case 5:
        return 'Text 6';
      case 6:
        return 'Text 7';
      case 7:
        return 'Text 8';
      case 8:
        return 'Text 9';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: FilterChip(
                      label: Text(options[index]),
                      selected: selectedIndex == index,
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            selectedIndex = index;
                            selectedItemText = getSelectedItemText(index);
                          } else {
                            selectedIndex = -1;
                            // selectedItemText = '';
                          }
                        });
                      },
                      selectedColor: Colors.red,
                      showCheckmark: false,                    ),
                  );
                },
              ),
            ),
            if (selectedItemText.isNotEmpty)
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(selectedItemText),
              ),
          ],
        ),
      ),
    );
  }

}
