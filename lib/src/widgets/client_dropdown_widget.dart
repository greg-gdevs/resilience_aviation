import 'package:flutter/material.dart';
//import '';

class Client {
  const Client(this.id,this.clientName);

  final int id;
  final String clientName;
}

class ClientDropDown extends StatefulWidget {
  @override
  createState() {
    return ClientDropDownState();
  }
}

class ClientDropDownState extends State<ClientDropDown> {
  @override

  void initState() {
    selectedClient = clients[0];

  }

  Client selectedClient;

  List<Client> clients = <Client>[const Client(1,'VIA AIR'), const Client(2,"ACS")];

  Widget build(BuildContext context) {

    return new Container(
      //width: 20.0,
      child:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new DropdownButton<Client>(
              //iconSize: 10,
              value: selectedClient,
              onChanged: (Client newValue) {
                setState(() {
                  selectedClient = newValue;
                });
              },
              items: clients.map((Client client) {
                return new DropdownMenuItem<Client>(
                  value: client,
                  //child: new SizedBox(
                  //width: 70.0,
                  child: new Text(

                    client.clientName,
                    overflow: TextOverflow.ellipsis,

                    style: new TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
          ),
          //new Text("selected user name is ${selectedUser.name} : and Id is : ${selectedUser.id}"),
        ],
      ),
    );
  }
}