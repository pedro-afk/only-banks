import 'package:flutter/material.dart';
import 'package:projeto_elaine/pages/Dashboard/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 30,
          ),
        ),
      ),
      body: _corpo(),
    );
  }

  _corpo() {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset("assets/images/logo.png"),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                  labelText: "Email",
                  hintText: "example@example.com",
                ),
              ),
              TextField(
                maxLength: 11,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                  counterText: "",
                  labelText: "CPF",
                  hintText: "XXXXXXXXXXX",
                ),
              ),
              TextField(
                obscureText: true,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                  labelText: "Senha",
                  hintText: "**********",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ElevatedButton(
                  onPressed: _onClickEntrar,
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text("Powered by Fatec Outinhos Students"),
              )
            ],
          ),
        ),
      ),
    );
  }

  _onClickEntrar() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return DashboardPage();
    }), result: false);
  }
}
