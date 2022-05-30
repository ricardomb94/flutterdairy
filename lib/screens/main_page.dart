import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        elevation:4,
          title: Row(children: [
            Text(
              'Mon',
              style:TextStyle(fontSize: 29, color:Colors.blueGrey.shade500)
              ),
            const Text(
              'Journal',
              style:TextStyle(fontSize: 29, color:Colors.green)
              )
          ],
        ),
        actions: [
          Row(
            children: [
              DropdownButton<String>(
                items:<String>['Latest', 'Earliest'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(color:Colors.blueGrey.shade500)),);
              }).toList(),
              hint: const Text('Select'),
              )
            ],
          )
        ],
      ),
    );
  }
}
