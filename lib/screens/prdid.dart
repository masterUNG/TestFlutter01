import 'package:flutter/material.dart';

class prdID extends StatefulWidget {
  const prdID({super.key});

  @override
  State<prdID> createState() => _prdIDState();
}

class _prdIDState extends State<prdID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product ID'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade100,
        ),
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              prdidText(),
              prddsText(),
              prdBtn(),
              prdList(),
            ],
          ),
        ),
      ),
    );
  }

  prdidText() {
    return Row(
      children: [
        Container(
          width: 200.0,
          child: TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.production_quantity_limits),
                labelText: 'ID',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                helperText: 'รหัสสินค้า',
                helperStyle: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                )),
          ),
        ),
      ],
    );
  }

  prddsText() {
    return Row(
      children: [
        Container(
          width: 300.0,
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.production_quantity_limits),
              labelText: 'Name',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              helperText: 'ชื่อสินค้า',
              helperStyle: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
        ),
      ],
    );
  }

  prdBtn() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        btnSave(),
        SizedBox(
          width: 10.0,
        ),
        btnNew(),
      ],
    );
  }

  Widget btnSave() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Save'),
    );
  }

  Widget btnNew() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('New'),
    );
  }

  ListView prdList() {
    List<Context1> maps = [
      Context1('รายการที่ 1', '0001'),
      Context1('รายการที่ 2', '0002'),
      Context1('รายการที่ 3', '0003'),
      Context1('รายการที่ 4', '0004'),
      Context1('รายการที่ 5', '0005'),
      Context1('รายการที่ 6', '0006'),
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: maps.length,
      itemBuilder: (BuildContext context, int index) {
        Context1 contactlist = maps[index];
        return ListTile(
          title: Text('${contactlist.a1}'),
          subtitle: Text('${contactlist.a2}'),
        );
      },
    );
  }
}

class Context1 {
  String? a1;
  String? a2;

  Context1(this.a1, this.a2);
}
