import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.cyan,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_page.png",
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0, child: Text("Fig 1.1")),
          Text(
            "Welcome To our Page",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 32.0,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
                    print("Hello Anusha");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
