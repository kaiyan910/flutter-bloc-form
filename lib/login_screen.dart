import 'package:flutter/material.dart';
import 'bloc.dart';
import 'provider.dart';

class LoginScreen extends StatelessWidget {
  Bloc _bloc;

  @override
  Widget build(BuildContext context) {
    _bloc = Provider.of(context);

    return Container(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            createEmailField(),
            createPasswordField(),
            new Container(margin: EdgeInsets.only(top: 25.0)),
            createSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget createEmailField() {
    return StreamBuilder(
      stream: _bloc.email,
      builder: (context, snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@exmpale.com',
            labelText: 'Email Address',
            errorText: snapshot.error,
          ),
          onChanged: _bloc.changeEmail,
        );
      },
    );
  }

  Widget createPasswordField() {
    return StreamBuilder(
      stream: _bloc.password,
      builder: (context, snapshot) {
        return TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: '******',
            labelText: 'Password',
            errorText: snapshot.error,
          ),
          onChanged: _bloc.changePassword,
        );
      },
    );
  }

  Widget createSubmitButton() {
    return StreamBuilder(
      stream: _bloc.submitValid,
      builder: (context, snapshot) {

        return RaisedButton(
          child: Text('Login'),
          color: Colors.blue,
          onPressed: (!snapshot.hasData) ? null : _bloc.submit,
        );
      },
    );
  }
}
