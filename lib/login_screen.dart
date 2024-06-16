import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                double maxWidth =
                    constraints.maxWidth < 400 ? constraints.maxWidth : 400;
                double maxHeight =
                    constraints.maxHeight < 400 ? constraints.maxHeight : 400;
                return ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxWidth),
                  child: Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Welcome to ',
                                  style: TextStyle(
                                    fontSize: maxWidth / 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ERP Admin',
                                  style: TextStyle(
                                    fontSize: maxWidth / 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: maxHeight / 15),
                          Text(
                            "Email",
                            style: TextStyle(
                              fontSize: maxWidth / 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: maxHeight * 0.01),
                          SizedBox(
                            height: maxHeight / 5,
                            child: TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: 'email@domain.com',
                                hintStyle: TextStyle(
                                  fontSize: maxWidth / 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                              fontSize: maxWidth / 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: maxHeight * 0.01),
                          TextField(
                            obscureText: true,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              hintText: '*********',
                              hintStyle: TextStyle(fontSize: maxWidth / 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          SizedBox(height: maxHeight * 0.01),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                  fontSize: maxWidth / 25,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: maxHeight * 0.05),
                          SizedBox(
                            width: double.infinity,
                            height: maxHeight / 7,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                'SUBMIT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: maxWidth / 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
