import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:policia/models/user/user.dart';
import 'package:policia/models/user/user_manager.dart';

class LoginScreen extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text("Entrar"),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 12),

            child: Form(
              key: formKey,
              child: ListView(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                children: [
                  Image.asset('images/login.jpg', height: 250,),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(hintText: "E-mail"),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,

                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller:  passController,
                    decoration: const InputDecoration(hintText: "Senha"),
                    autocorrect: false,
                    obscureText: true,
                    validator: (pass) {
                      if (pass.isEmpty || pass.length < 6)
                        return "Senha Inválida";
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Text(
                        "Entrar",
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
