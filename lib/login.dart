import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'login_view';

  @override
  Widget build (BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///email
            SizedBox(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'email',
                  labelStyle: TextStyle(
                    color: Color(0xFFBEBCBC),
                    fontWeight: FontWeight.w700,
                  )
                ),
                onChanged: (value) {},
              ),
            ),
          
            ///password
            SizedBox(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'password',
                  labelStyle: TextStyle(
                    color: Color(0xFFBEBCBC),
                    fontWeight: FontWeight.w700,
                  )
                ),
                onChanged: (value) {},
              ),
            ),

            ElevatedButton(
            onPressed: ()=>{}, 
            child: const Text(
              'Iniciar Sesion',
              )
            ),
          ],
        ),
      ),
    );
  }
}