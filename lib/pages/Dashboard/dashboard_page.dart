import 'package:flutter/material.dart';
import 'package:projeto_elaine/pages/Login/login_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      appBar: AppBar(
        title: Text(
          "Inicio",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 30,
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Elaine Pasqualini",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "elaine@email.com.br",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/download.jpeg",
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.attach_money_rounded),
                title: Text("Saldo e extrato"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.credit_card_rounded),
                title: Text("Cartões"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              Divider(height: 1, thickness: 1, color: Colors.grey),
              ListTile(
                leading: Icon(Icons.signal_cellular_alt_outlined),
                title: Text("Investimentos"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Configurações"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {},
              ),
              Divider(height: 1, thickness: 1, color: Colors.grey),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Encerrar sessão"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: _onClickEncerrar,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onClickEncerrar() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LoginPage();
        },
      ),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 25, left: 15),
            child: Text(
              "Olá, Elaine",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Card(
              elevation: 8,
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.monetization_on_rounded,
                            size: 30, color: Colors.grey),
                        SizedBox(width: 18),
                        Text(
                          "Saldo disponível",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "R\$ 3.452,12",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 8),
                      child: Text("Saldo + limite = R\$ 3.452,12"),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Ver extrato",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Card(
                    elevation: 5,
                    child: Container(
                      height: 90,
                      width: 120,
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.signal_cellular_alt_outlined,
                              color: Colors.grey, size: 30),
                          Text(
                            "Ivestimentos",
                            style: TextStyle(
                                color: Color(0xFF303030), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      height: 90,
                      width: 120,
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://logospng.org/download/pix/logo-pix-icone-512.png",
                            height: 33,
                            width: 33,
                            color: Colors.grey,
                          ),
                          Text(
                            "Pix",
                            style: TextStyle(
                                color: Color(0xFF303030), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      height: 90,
                      width: 125,
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.import_export_rounded,
                              color: Colors.grey, size: 30),
                          Text(
                            "Transferências",
                            style: TextStyle(
                                color: Color(0xFF303030), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      height: 90,
                      width: 120,
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.monetization_on_rounded,
                              color: Colors.grey, size: 30),
                          Text(
                            "Extrato",
                            style: TextStyle(
                                color: Color(0xFF303030), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
