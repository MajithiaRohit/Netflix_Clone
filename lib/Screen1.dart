import 'package:flutter/material.dart';

void main() {
  runApp(NetflixSignIn());
}

class NetflixSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SignInScreen(),
    );
  }
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 60.0),
            Center(
              child: Text(
                'NETFLIX',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            /*Text Boxsix*/
            SizedBox(height: 50.0),
            Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                hintText: 'Email or mobile number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
            ),

            SizedBox(height: 20.0),

            ElevatedButton(
              style: ElevatedButton.styleFrom(

                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              onPressed: () {},
              child: Text('Sign In'),
            ),
            SizedBox(height: 20.0),

            Text(
              'OR',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
          
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            
            /*Remember me */
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.all(Colors.white),
                ),
                Text(
                  'Remember me',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          
            /*Sing Up*/
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'New to Netflix? Sign up now.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
