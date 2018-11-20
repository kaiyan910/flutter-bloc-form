import 'dart:async';

class Validators {

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@')) {
        return sink.add(email);
      } else {
        return sink.addError('invalid email.');
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {

      if (password.length > 3) {
        return sink.add(password);
      } else {
        return sink.addError('password must be at least 4 characters.');
      }
    },
  );
}